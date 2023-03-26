import 'package:aibert/View/SplashScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      ScreenUtilInit(
        designSize: const Size(375, 634),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {

          return MaterialApp(
            title: 'AIBERT',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              fontFamily: 'assets/fonts/Inter-VariableFont_slnt,wght.ttf'
            ),
            home: child,
            debugShowCheckedModeBanner: false,
          );
        },
        child: const splashscreen(),
      );
  }
}

