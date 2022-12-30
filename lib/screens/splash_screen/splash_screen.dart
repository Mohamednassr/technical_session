


import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_session/screens/mamas%20meals/mamas_meals.dart';
import 'package:technical_session/screens/menu/menu.dart';

import '../../constants/colors.dart';
import '../branches/branch_screen.dart';
import '../home/screen/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 5),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) =>Home())));
  }

  @override
  void dispose() {
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:,
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Colors.white,
                radius: 200.r,
                child:  ClipRRect(
                  borderRadius:BorderRadius.circular(50),
                  child: Image.asset("assets/images/logo1.png"),

                )
            ),
            SizedBox(height: 50),
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width - 100,
              child: RotatedBox(
                quarterTurns: 2,
                child: LinearProgressIndicator(
                  minHeight: 2,
                  color: mainColor,
                  backgroundColor: mainColor.withOpacity(0.5),
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}