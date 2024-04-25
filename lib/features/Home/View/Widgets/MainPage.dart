import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mokawlat/common/widgets/ListtileHomePage.dart';
import 'package:mokawlat/common/widgets/buttomButtons.dart';
import 'package:mokawlat/features/ServicePage/View/ServicePage.dart';
import 'package:mokawlat/utils/constants/image_strings.dart';
import 'package:mokawlat/utils/constants/local_storage.dart';
import 'package:mokawlat/utils/local_storage/storage_utility.dart';

import '../../Controller/HomeScreenController.dart';
import '../../Controller/MainScreenController.dart';
import '../NavigationView.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text('Settler'),
        ),
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(fontSize: 16.sp, color: Colors.blue),
              )),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 250.h,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: 5.w,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () => Get.to(ServicePage(
                          title: "This is the title",
                          descreption: 'descreption',
                          imageUrl: MImages.productImage1,
                        )),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.w),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, top: 10.h, bottom: 10.h),
                            child: Container(
                              width: 200.w,
                              height: 200.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.w)),
                              child: Image.asset(MImages.productImage1),
                            ),
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0.w),
                  child: Text(
                    "Popular Categories",
                    style:
                        TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          width: 5.w,
                        ),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 7,
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () => Get.to(ServicePage(
                            title: "This is the title",
                            descreption: 'descreption',
                            imageUrl: MImages.productImage1,
                          )),
                          child: const ListtileHomePage(
                            title: 'ay',
                            subTitle: 'haga',
                            imageUrl: MImages.productImage1,
                            isNetworkImage: false,
                          ),
                        )),
              ],
            ),
          ),
          Positioned(
              bottom: 2.h,
              left: 75.h,
              child: const ButtomButtton(
                  title: 'Order Now', icon: Icons.one_k_rounded))
        ],
      ),
    );
  }
}
