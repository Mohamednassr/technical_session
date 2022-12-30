import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:technical_session/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

 class MyApp extends StatelessWidget { //Getx // Bloc //cubit //riverpod(provider)=>StateManagement
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {//root
     return ScreenUtilInit( // height:200.h; width:100.w; radius :25.r ,fontSize:16.sp
       designSize:  Size(460, 848),
         builder: (BuildContext,Widget){
           return GetMaterialApp(
             home:SplashScreen()
           );
         });
   }
 }
