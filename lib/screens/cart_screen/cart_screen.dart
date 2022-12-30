import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_session/constants/colors.dart';

import '../../componants/cart_ingrediant_row.dart';
import '../../componants/custom_button.dart';

class CartScreen extends StatelessWidget {


  const CartScreen({Key? key}) : super(key: key);

  // get height => null;
  //
  // get width => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(

            centerTitle: true,
            title: const Text('tender'),
            backgroundColor: kAppBarColor
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                //   children: [
                // widget(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.h),
                    child: Card(
                      elevation: 5, //shadow
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.orange, width: 3.w,


                        ),
                        borderRadius: BorderRadius.circular(18.sp),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,


                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18.r),
                                  bottomLeft: Radius.circular(18.r),
                                ),
                                child: Image.asset(
                                  'assets/images/images4.jpg', fit: BoxFit.fill,
                                  height: 150.h,
                                  width: 160.w,),
                              ),
                              Text('No Massages'),

                            ],
                          ), Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tender', style: TextStyle(fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                height: 2.h,
                              ),),

                              Container(
                                height: 200.h,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(18.r))
                                ),
                                child: Column(
                                  children: [
                                    CartIngrediantRow(
                                      text: 'price :', price: '4.5',),
                                    CartIngrediantRow(
                                      text: 'price :', price: '200',),
                                    CartIngrediantRow(
                                      text: 'price :', price: '200',),
                                    CartIngrediantRow(
                                      text: 'price :', price: '200',),
                                    CartIngrediantRow(
                                      text: 'price :', price: '200',),

                                  ],
                                ),


                              )

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),



                          Positioned(
                              top: 0,
                              left: 0,
                              child: CircleAvatar(
                                  radius: 29.r,
                                  backgroundColor: Colors.orange,
                                  child: CircleAvatar(
                                      radius: 28.r,
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                        icon: Icon(Icons.delete, size: 37.r,),
                                        onPressed: () {

                                        },

                                      )


                                  ),

                              ),
                          ),
 //   ),




  ],
    ),
             Container
               (height: 100.h,
               width: double.infinity,
               color:kSecPrimaryColor,
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children:
                   [Text('price',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp,color:Colors.black),),
                     Text('999',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.sp,color:Colors.red),),

                     Text('Pound',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp,color:Colors.black),),

                   ],),
                   Text('Taxes included'),
                 ],
               ),),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
               Button(
                 text: 'Confirm',
                 isFramed: true,
                 fontSize: 16.sp,
                 size: 200,
                 height: 70.h,
                 onPressed: (){},
               ),
  Button(
                 text: 'CheckOut',
                 isFramed: true,
                 fontSize: 16.sp,
                 size: 200,
                 height: 70.h,
                 onPressed: (){},
               ),

             ],)

    ],
    ),
    ),
    );
  }
}






