import 'dart:async';

import 'package:aibert/View/Loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => login(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return
      AnnotatedRegion
      <SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light
            .copyWith(statusBarColor: Color(0xff000000)),
        child: Scaffold(
          body: Container(
            color: Color(0xff000000),
            child: Center(
                child:Text("AiBERT",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 36.sp,color: Colors.white),)
            ),
          ),
        ),
      );
  }
}
