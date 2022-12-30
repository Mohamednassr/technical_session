//Screen =>class

//children :row , column , stack ,wrap ,listview
//child:Container ,Material, Expanded ,
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
     bottomNavigationBar: Material(
       elevation: 5,
       child: Container(
         padding: EdgeInsets.only(bottom:5.h),
         margin: EdgeInsets.only(bottom:5.h),
         width: double.infinity,
         height: 80.h,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween, //important
           children: [
             Obx(() => InkWell(
               child: Container(
                 width: 80.w,
                 padding: EdgeInsets.only(top:5.h),
                 decoration: BoxDecoration( //radius
                     borderRadius: BorderRadius.circular(15.r),
                     color: controller.currentIndex.value==0?//condition(if)
                     Colors.pinkAccent.shade100.withOpacity(.7)//condition
                         :Colors.transparent
                 ),child: Column(
                 children: [
                   Image.asset('assets/icons/ic_menu_filled.png'),
                   Text('menu',style: TextStyle(
                       color: controller.currentIndex.value==0?
                       Colors.white
                           :Colors.black
                   ),)
                 ],
               ),
               ),
               onTap: (){
                 controller.changeIndex(0);

               },
             ),),

             Obx(() => InkWell(
               child: Container(
                 width: 80.w,
                 padding: EdgeInsets.only(top:5.h),
                 decoration: BoxDecoration( //radius
                     borderRadius: BorderRadius.circular(15.r),
                     color: controller.currentIndex.value==1?//condition(if)
                     Colors.pinkAccent.shade100.withOpacity(.7)//condition
                         :Colors.transparent
                 ),child: Column(
                 children: [
                   Image.asset('assets/icons/ic_menu_filled.png'),
                   Text('menu',style: TextStyle(
                       color: controller.currentIndex.value==1?
                       Colors.white
                           :Colors.black
                   ),)
                 ],
               ),
               ),
               onTap: (){
                 controller.changeIndex(0);

               },
             ),),
             Obx(() => InkWell(
               child: Container(
                 width: 80.w,
                 padding: EdgeInsets.only(top:5.h),
                 decoration: BoxDecoration( //radius
                     borderRadius: BorderRadius.circular(15.r),
                     color: controller.currentIndex.value==2?//condition(if)
                     Colors.pinkAccent.shade100.withOpacity(.7)//condition
                         :Colors.transparent
                 ),child: Column(
                 children: [
                   Image.asset('assets/icons/ic_menu_filled.png'),
                   Text('menu',style: TextStyle(
                       color: controller.currentIndex.value==2?
                       Colors.white
                           :Colors.black
                   ),)
                 ],
               ),
               ),
               onTap: (){
                 controller.changeIndex(0);

               },
             ),),
             Obx(() => InkWell(
               child: Container(
                 width: 80.w,
                 padding: EdgeInsets.only(top:5.h),
                 decoration: BoxDecoration( //radius
                     borderRadius: BorderRadius.circular(15.r),
                     color: controller.currentIndex.value==2?//condition(if)
                     Colors.pinkAccent.shade100.withOpacity(.7)//condition
                         :Colors.transparent
                 ),child: Column(
                 children: [
                   Image.asset('assets/icons/ic_menu_filled.png'),
                   Text('menu',style: TextStyle(
                       color: controller.currentIndex.value==2?
                       Colors.white
                           :Colors.black
                   ),)
                 ],
               ),
               ),
               onTap: (){
                 controller.changeIndex(0);

               },
             ),),
             Obx(() => InkWell(
               child: Container(
                 width: 80.w,
                 padding: EdgeInsets.only(top:5.h),
                 decoration: BoxDecoration( //radius
                     borderRadius: BorderRadius.circular(15.r),
                     color: controller.currentIndex.value==2?//condition(if)
                     Colors.pinkAccent.shade100.withOpacity(.7)//condition
                         :Colors.transparent
                 ),child: Column(
                 children: [
                   Image.asset('assets/icons/ic_menu_filled.png'),
                   Text('menu',style: TextStyle(
                       color: controller.currentIndex.value==2?
                       Colors.white
                           :Colors.black
                   ),)
                 ],
               ),
               ),
               onTap: (){
                 controller.changeIndex(0);

               },
             ),),
           ],
         ),
       ),
     ),
   );
  }

}

