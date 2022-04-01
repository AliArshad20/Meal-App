import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mymeal/categoryhome.dart';
import 'package:mymeal/home.dart';
import 'package:sizer/sizer.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreen> {
  void initstate() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homescreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            height: 30.h,
            width: 63.w,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100.sp)),
                child:Image.asset(
                  'assets/flutter.png',
                  fit: BoxFit.contain,
                )),
          ),
        ));
  }
}
