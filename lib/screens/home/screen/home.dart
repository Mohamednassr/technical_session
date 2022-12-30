//Screen =>class

//children :row , column , stack ,wrap ,listview
//child:Container ,Material, Expanded ,
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../../constants/colors.dart';
import '../controller/home_controller.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
   return Scaffold( //widget (real phone theme)
     //appbar
     //body
     //bottomNavbar
     //floatActionButton

           body: Center(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset(
                     'assets/icons/ic_no_connection.png',
                     height: 300.h,
                     width: 300.w,
                     color: mainColor,
                   ),
                   Text(
                     'no_connection'.tr,
                     style: TextStyle(
                         fontSize: 25.sp,
                         color: mainColor,
                         fontWeight: FontWeight.bold),
                   ),
                 ],
               )),
    bottomNavigationBar:
    Material(
    elevation: 2,
    child: Container(
    padding: EdgeInsets.only(bottom: 5.h),
    margin: EdgeInsets.only(bottom: 10.h),
    width: double.infinity,
    height: 80.h,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Obx(() => Expanded(
    child: GestureDetector(
    onTap: () {
    controller.changeIndex(4);
    },
    child: Container(
    width: 80.w,
    padding: EdgeInsets.only(top: 5.h),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15.r),
    color:
    controller.currentIndex.value == 4
    ? Colors.pinkAccent.shade100.withOpacity(.7)
        : Colors.transparent,
    ),
    child: Column(
    children: [
    controller.currentIndex.value == 4
    ? ShowUpAnimation(
    animationDuration:
    Duration(milliseconds: 200),
    child: Image.asset(
    "assets/icons/ic_more.png",
    width: 25.w,
    height: 25.h,
    color: controller
        .currentIndex.value ==
    4
    ? Colors.white
        : Colors.black,
    ))
        : Image.asset(
    "assets/icons/ic_more.png",
    width: 25.w,
    height: 25.h,
    color: controller
        .currentIndex.value ==
    4
    ? Colors.white
        : Colors.black,
    ),
      controller.currentIndex.value == 4
    ? ShowUpAnimation(
    animationDuration:
    Duration(milliseconds: 200),
    child: Text("more_info".tr,
    style: TextStyle(
    color: controller
        .currentIndex.value ==
    4
    ? Colors.white
        : Colors.black,
    fontSize: 16.sp)),
    )
        : SizedBox()
    ],
    ),
    ),
    ),
    )),
    Obx(() => Expanded(
    child: GestureDetector(
    onTap: () {
      controller.changeIndex(3);
    },
    child: Container(
    width: 80.w,
    padding: EdgeInsets.only(top: 5.h),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15.r),
    color:
    controller.currentIndex.value == 3
    ? Colors.pinkAccent.shade100.withOpacity(.7)
        : Colors.transparent,
    ),
    child: Column(
    children: [
    controller.currentIndex.value == 3
    ? ShowUpAnimation(
    animationDuration:
    Duration(milliseconds: 200),
    child: Image.asset(
    "assets/icons/ic_cart.png",
    width: 25.w,
    height: 25.h,
    color: controller
        .currentIndex.value ==
    3
    ? Colors.white
        : Colors.black,
    ))
        : Image.asset(
    "assets/icons/ic_cart.png",
    width: 25.w,
    height: 25.h,
    color: controller
        .currentIndex.value ==
    3
    ? Colors.white
        : Colors.black,

    ),
    controller.currentIndex.value == 3
    ? ShowUpAnimation(
    animationDuration:
    Duration(milliseconds: 200),
    child: Text("cart".tr,
    style: TextStyle(
    color: controller
        .currentIndex.value ==
    3
    ? Colors.white
        : Colors.black,
    fontSize: 16.sp)))
        : SizedBox()
    ],
    ),
    ),
    ),
    )),
    Obx(() => Expanded(
    child: GestureDetector(
    onTap: () {
    Get.put(HomeController());
    controller.changeIndex(2);

    },
    child: Container(
    width: 80.w,
    padding: EdgeInsets.only(top: 5.h),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15.r),
    color:
    controller.currentIndex.value == 2
    ? Colors.pinkAccent.shade100.withOpacity(.7)
        : Colors.transparent,
    ),
    child: Column(
    children: [
      controller.currentIndex.value == 2
    ? ShowUpAnimation(
    animationDuration:
    Duration(milliseconds: 200),
    child: Image.asset(
    "assets/icons/ic_home.png",
    width: 25.w,
    height: 25.h,
    color: controller
        .currentIndex.value ==
    2
    ? Colors.white
        : Colors.black,
    ))
        : Image.asset(
    "assets/icons/ic_home.png",
    width: 25.w,
    height: 25.h,
    color: controller
        .currentIndex.value ==
    2
    ? Colors.white
        : Colors.black,
    ),
    controller.currentIndex.value == 2
    ? ShowUpAnimation(
    animationDuration:
    Duration(milliseconds: 200),
    child: Text("home".tr,
    style: TextStyle(
    color: controller
        .currentIndex.value ==
    2
    ? Colors.white
        : Colors.black,
    fontSize: 16.sp)))
        : SizedBox()
    ],
    ),
    ),
    ),
    )),
    Obx(() => Expanded(
    child: GestureDetector(
    onTap: () {
      controller.changeIndex(1);
    },
    child: Container(
    width: 80.w,
    padding: EdgeInsets.only(top: 5.h),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15.r),
    color:
    controller.currentIndex.value == 1
    ? Colors.pinkAccent.shade100.withOpacity(.7)
        : Colors.transparent,
    ),
    child: Column(
    children: [
    controller.currentIndex.value == 1
    ? ShowUpAnimation(
    animationDuration:
    Duration(milliseconds: 200),
    child: Image.asset(
    "assets/icons/track.png",
    width: 25.w,
    height: 25.h,
    color: controller
        .currentIndex.value ==
    1
    ? Colors.white
        : Colors.black,
    ))
        : Image.asset(
    "assets/icons/track.png",
    width: 25.w,
    height: 25.h,
    color: controller
        .currentIndex.value ==
    1
    ? Colors.white
        : Colors.black,
    ),
    controller.currentIndex.value == 1
    ? Text("track_order".tr,
    style: TextStyle(
    color: controller
        .currentIndex.value ==
    1
    ? Colors.white
        : Colors.black,
    fontSize: 16.sp))
        : SizedBox()
    ],
    ),
    ),
    ),
    )),
    Obx(() => Expanded(
    child: GestureDetector(
    onTap: () {
      controller.changeIndex(0);
    },
    child: Container(
    width: 80.w,
    padding: EdgeInsets.only(top: 5.h),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15.r),
    color:
    controller.currentIndex.value == 0
    ? Colors.pinkAccent.shade100.withOpacity(.7)
        : Colors.transparent,
    ),
    child: Column(
    children: [
    controller.currentIndex.value == 0
    ? ShowUpAnimation(
    animationDuration:
    Duration(milliseconds: 200),
    child: Image.asset(
    "assets/icons/ic_menu.png",
    width: 25.w,
    height: 25.h,
    color: controller
        .currentIndex.value ==
    0
    ? Colors.white
        : Colors.black,
    ))
        : Image.asset(
    "assets/icons/ic_menu.png",
    width: 25.w,
    height: 25.h,
    color: controller
        .currentIndex.value ==
    0
    ? Colors.white
        : Colors.black,
    ),
    controller.currentIndex.value == 0
    ? ShowUpAnimation(
    animationDuration:
    Duration(milliseconds: 200),
    child: Text("menu".tr,
    style: TextStyle(
    color: controller
        .currentIndex.value ==
    0
    ? Colors.white
        : Colors.black,
    fontSize: 16.sp)))
        : SizedBox()
    ],
    ),
    ),
    ),
    )),
    ],
    ),
    ),
    )
   );
  }

}

