import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_session/constants/colors.dart';

import '../../../../componants/cart_ingrediant_row.dart';


class Tenders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor:kPrimaryColor,
      appBar: AppBar(
      centerTitle:true,
      title: const Text('Track order'),
    backgroundColor:kSecPrimaryColor

  ),

    body: SingleChildScrollView(
    child: Column(
      children: [
        Stack(
          children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 18.h),
                  child: Card(
                    elevation: 5,//shadow
                    color: kSecPrimaryColor,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: kSecPrimaryColor,width: 3.w,


                      ),
                      borderRadius: BorderRadius.circular(18.sp),
                    ),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                          mainAxisAlignment:MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,


                          children: [
                            ClipRRect(
                              borderRadius:BorderRadius.only(
                                topLeft: Radius.circular(18.r),
                                bottomLeft: Radius.circular(18.r),
                              ) ,
                              child: Image.asset('assets/images/images3.jpg',fit: BoxFit.fill,height: 150.h,width: 160.w,),
                            ),
                          //  Text('No Massages'),

                          ],
                        ),     Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('قطع تندرز',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold, height: 2.h,
                            ),),

                            Container(
                              height:120.h,
                              width: 250,
                              decoration: BoxDecoration(
                                  color:Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(18.r),

                                  ),
                              ),
                              child: Column(
                                children: [
                                  CartIngrediantRow(text: 'price :',price: '20',),


                                ],
                              ),


                            )


                          ],
                        ),
                      ],
                    ),
                  ),
                ),
         // SizedBox(230.h),
        //         Container(
        //
        //     width: 200.w,
        // padding: EdgeInsets.only(top: 20.h),
        // decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(20.r),
        // color:kAppBarColor,
        //
        // ),

        // child: Column(
        // children: [
        //
        //  Text('order now'),
        // SizedBox(height: 200.h,)
        //
        // ],
        // ),
        // ),
 // ),
        //)



        ],
      ),
    ],
    ),
         // ],
        )
       // )


   //  ],

    );
 // );
  }
  }












