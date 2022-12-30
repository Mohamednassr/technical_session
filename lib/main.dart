import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:technical_session/screens/cart_screen/cart_screen.dart';
import 'package:technical_session/screens/menu/menu.dart';
import 'package:technical_session/screens/splash_screen/splash_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
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
         //    home:SplashScre/en()
           );
         });
   }
 }
