import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mokawlat/common/widgets/buttomButtons.dart';
import 'package:mokawlat/utils/constants/image_strings.dart';
import 'package:url_launcher/url_launcher.dart';

class ServicePage extends StatelessWidget {
  ServicePage(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.descreption});
  final isNetworkImage = false;
  final String title;
  final String imageUrl;
  final String descreption;
  launch(String url) async {
    Uri convertedUri = Uri.parse(url);
    if (!await launchUrl(convertedUri)) {
      throw Exception('Could not launch $convertedUri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Theme.of(context).colorScheme.background,
              elevation: 0,
              automaticallyImplyLeading: false,
              centerTitle: true,
              pinned: true,
              expandedHeight: 200.h,
              flexibleSpace: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [
                          0.5,
                          1.0
                        ],
                            colors: [
                          Colors.transparent,
                          const Color.fromARGB(255, 80, 56, 56).withOpacity(0.7)
                        ])),
                    child: FlexibleSpaceBar(
                      background: isNetworkImage
                          ? CachedNetworkImage(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 30.w,
                              imageUrl: imageUrl,
                              placeholder: (context, url) =>
                                  CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            )
                          : Image(
                              image: AssetImage(MImages.productImage1),
                              width: 30.w,
                            ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 10,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_circle_left,
                          size: 35.w,
                        )),
                  ),
                  Positioned(
                    top: 170.h,
                    left: 50.w,
                    right: 50.w,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 28.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 600.h,
                color: const Color.fromARGB(255, 219, 219, 219),
                child: Padding(
                  padding: EdgeInsets.all(10.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        descreption,
                        style: TextStyle(color: Colors.black, fontSize: 22.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtomButtton(
              title: "Call",
              icon: Icons.call,
              ontap: () {
                launch("tel://+01153453880".trim());
              },
            ),
          ],
        ),
      ],
    ));
  }
}
