import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:technical_session/constants/colors.dart';

import 'menucontroller.dart';





class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);
  final controller =Get.put(Menucontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Menu'),
          foregroundColor: Colors.white,

          backgroundColor: kSecPrimaryColor,


        ),

        //Gridvieww.builder
        body:
        // padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        GridView.builder(
            cacheExtent: 1500,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 260.w,
                childAspectRatio: 8 / 9,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 20.w),
            itemCount: 9,
            itemBuilder: (BuildContext ctx, index) {
return Column(
  children: [
  Container( alignment: Alignment.topCenter,
  decoration: BoxDecoration(
    color:kSecPrimaryColor,
    borderRadius:BorderRadius.all(Radius.circular(18.r)),
  ),
  //topLeft: Radius.circular(18.r),
  //   bottomLeft: Radius.circular(18.r),
  //borderRadius: BorderRadius.circular(15.r)),
  child:Image.asset(controller.MenucontrollerImages[index].toString(),fit: BoxFit.fill,height: 250.h,width: 250.w,),

  //Text(myProducts[index]["name"]),
),
    Text('name',style: TextStyle(color: Colors.white),),
  ],
);


    }


        ),
    );
}
}



















