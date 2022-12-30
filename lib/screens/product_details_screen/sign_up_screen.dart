import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../componants/custom_button.dart';
import '../../../constants/colors.dart';
import '../login_screen/controller/login_controller.dart';
import '../login_screen/login_screen.dart';

//import 'package:flutter_login/flutter_login.dart';
//import 'dashboard_screen.dart';

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    final controller=Get.put(LoginController());
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children : <Widget>[

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/index2232.jpg",fit: BoxFit.fill,height: 400,width: 400,)

                    ]
                ),

                Container(
                  width: 348.w,
                  child:  TextFormField(
                    style: TextStyle(color: kPrimaryColor,fontSize: 18.sp,fontWeight: FontWeight.bold ),
                    keyboardType: TextInputType.name,
                    controller: controller.userController,



                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please_enter_your_user_name';
                      }
                      return null;
                    },
                    onChanged: (newValue) async{
                      // signUpController.userNameTextEditingController =
                      //     newValue;
                      // // CacheHelper.loginShared!.name=newValue;
                    },
                    decoration:

                    InputDecoration(
                      hintText: "user_name",
                      filled: true,
                      fillColor: Colors.white,


                      isDense: true,
                      // Added this
                      contentPadding: EdgeInsets.all(20.w),
                      hintStyle: TextStyle(color: mainColor, fontSize: 16.sp),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: mainColor,
                        ),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: mainColor,
                        ),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: mainColor,
                        ),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h,)
                ,


                Container(
                  width: 348.w,
                  child:  TextFormField(
                    style: TextStyle(color: kPrimaryColor,fontSize: 18.sp,fontWeight: FontWeight.bold ),
                    keyboardType: TextInputType.name,
                    controller: controller.passController,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please_enter_your_user_name';
                      }
                      return null;
                    },
                    onChanged: (newValue) async{
                      // signUpController.userNameTextEditingController =
                      //     newValue;
                      // // CacheHelper.loginShared!.name=newValue;
                    },
                    decoration:

                    InputDecoration(
                      hintText: "password",
                      filled: true,
                      fillColor: Colors.white,

                      isDense: true,
                      // Added this
                      contentPadding: EdgeInsets.all(20.w),
                      hintStyle: TextStyle(color: mainColor, fontSize: 16.sp),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: mainColor,
                        ),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: mainColor,
                        ),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: mainColor,
                        ),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ),
                ),
                Button(
                  text: 'sign up',
                  isFramed: true,
                  fontSize: 16.sp,
                  size: 200,
                  height: 70.h,
                  onPressed: (){
                    controller.signUp();
                  },
                ),
                InkWell(
                  child: Text('already have an account ? login'),
                  onTap: (){
                    Get.off(Login());
                  },
                )
              ]
          )
      ),
    );


  }
}

