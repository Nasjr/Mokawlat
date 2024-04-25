import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mokawlat/utils/constants/image_strings.dart';

class ListtileHomePage extends StatelessWidget {
  const ListtileHomePage({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    this.isNetworkImage = false,
  });
  final String title;
  final String subTitle;
  final String imageUrl;
  final bool isNetworkImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(10.w),
        height: 100.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.w),
          color: Colors.white,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.w),
              child: isNetworkImage
                  ? Image.network(imageUrl)
                  : Image.asset(
                      imageUrl,
                      width: 60.w,
                    ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Flexible(
                    child: Text(
                      subTitle,
                      style: TextStyle(fontSize: 14.sp, color: Colors.blueGrey),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: ()=> Get.back(),
                icon: const Icon(Icons.arrow_circle_right))
          ],
        ),
      ),
    );
  }
}
