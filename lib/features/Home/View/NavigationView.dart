
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mokawlat/features/Home/Controller/HomeScreenController.dart';

import '../../../utils/helpers/helper_functions.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return SafeArea(
      child: GetBuilder<HomeScreenController>(builder: (ctx) {
        return WillPopScope(
          onWillPop: () {
            if (ctx.selectedBottomNavigationBarIndex != 0) {
              ctx.selectedBottomNavigationBarIndex = 0;
              ctx.changeCurrPage();
              ctx.update();
              return Future.value(false);
            }
            return Future.value(true);
          },
          child: Scaffold(
              bottomNavigationBar: NavigationBar(
                destinations: [
                  NavigationDestination(
                      icon: Icon(Iconsax.home,
                          color: ctx.selectedBottomNavigationBarIndex == 0
                              ? MHelperFunctions.isDarkMode(context)
                                  ? Colors.black
                                  : Colors.white
                              : MHelperFunctions.isDarkMode(context)
                                  ? Colors.white
                                  : Colors.black),
                      label: "Home"),
                  NavigationDestination(
                      icon: Icon(Iconsax.box,
                          color: ctx.selectedBottomNavigationBarIndex == 1
                              ? MHelperFunctions.isDarkMode(context)
                                  ? Colors.black
                                  : Colors.white
                              : MHelperFunctions.isDarkMode(context)
                                  ? Colors.white
                                  : Colors.black),
                      label: "Categories"),
                  NavigationDestination(
                      icon: Icon(Icons.favorite_border,
                          color: ctx.selectedBottomNavigationBarIndex == 2
                              ? MHelperFunctions.isDarkMode(context)
                                  ? Colors.black
                                  : Colors.white
                              : MHelperFunctions.isDarkMode(context)
                                  ? Colors.white
                                  : Colors.black),
                      label: "Favourites"),
                  NavigationDestination(
                      icon: Icon(Iconsax.discount_shape,
                          color: ctx.selectedBottomNavigationBarIndex == 3
                              ? MHelperFunctions.isDarkMode(context)
                                  ? Colors.black
                                  : Colors.white
                              : MHelperFunctions.isDarkMode(context)
                                  ? Colors.white
                                  : Colors.black),
                      label: "Offers"),
                ],
                height: 60.h,
                animationDuration: Durations.long1,
                indicatorColor: MHelperFunctions.isDarkMode(context)
                    ? Colors.white
                    : const Color.fromARGB(255, 4, 180, 92).withOpacity(0.9),
                onDestinationSelected: (index) =>
                    ctx.onDestenationSelected(index),
                selectedIndex: ctx.selectedBottomNavigationBarIndex,
              ),
              body: GetBuilder<HomeScreenController>(builder: (cont) {
                return cont.changeCurrPage();
              })),
        );
      }),
    );
  }
}

class HorizontalListViewWrapContainer extends StatelessWidget {
  const HorizontalListViewWrapContainer({
    super.key,
    this.height,
    this.width = 60,
    this.imageWidth = 90,
    required this.listLength,
    required this.itemBuilder,
  });
  final double? height;
  final double imageWidth;
  final double width;
  final int listLength;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      height: 120.0.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 10.w,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: listLength,
        itemBuilder: itemBuilder,
      ),
    );
  }
}

