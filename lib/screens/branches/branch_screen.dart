import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../constants/colors.dart';

class branches extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(branches());

    // var alignment;
    return Scaffold( //widget (real phone theme)
        //appbar
        //body
        //bottomNavbar
        //floatActionButton
backgroundColor: kPrimaryColor,
        appBar: AppBar(
         backgroundColor: kSecPrimaryColor,
        centerTitle: true,
        title: Text('برجاء اختيار الفرع '),
          foregroundColor:Colors.white,

    ),

    body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children : <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text('Please Select a Branch',style: TextStyle(
                color: kSecPrimaryColor,
                fontSize: 20.sp
              ),),
              
              Image.asset('assets/images/index1.jpg',fit:BoxFit.fill,height: 80.h,)
              
            ],),
            Container(

              padding: EdgeInsets.all( 10.h),
              margin: EdgeInsets.all(10.sp),

              alignment: Alignment.center,

              height: 60.h,
              width: 600.w,
              child:   Text( "فرع القاهره",style: TextStyle(fontSize: 18.sp),),
              decoration: BoxDecoration(
                  color: kSecPrimaryColor,
                borderRadius: BorderRadius.circular(15.sp)
              ),

            ),
         SizedBox(height:6.h),
        Container(

          padding: EdgeInsets.all( 10.h),
          margin: EdgeInsets.all(10.sp),

          alignment: Alignment.center,

          height: 60.h,
          width: 600.w,
          child:   Text( "فرع القاهره",style: TextStyle(fontSize: 18.sp),),
          decoration: BoxDecoration(
              color: kSecPrimaryColor,
              borderRadius: BorderRadius.circular(15.sp)
          ),

        ),
            SizedBox(height:6.h),
      Container(

        padding: EdgeInsets.all( 10.h),
        margin: EdgeInsets.all(10.sp),

        alignment: Alignment.center,

        height: 60.h,
        width: 600.w,
        child:   Text( "فرع القاهره",style: TextStyle(fontSize: 18.sp),),
        decoration: BoxDecoration(
            color: kSecPrimaryColor,
            borderRadius: BorderRadius.circular(15.sp)
        ),

      ),

          ],
        )) ,

    );
  }}