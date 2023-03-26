import 'package:aibert/View/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class creapageview extends StatefulWidget {
  const creapageview({Key? key}) : super(key: key);

  @override
  State<creapageview> createState() => _creapageviewState();
}

class _creapageviewState extends State<creapageview> {
  @override
  Widget build(BuildContext context) {
    return
      AnnotatedRegion
      <SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light
            .copyWith(statusBarColor: Color(0xff000000)),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xffFF24BD),
            body:
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //Appbar
                  Container(
                      height: 33.h,
                      width: 375.w,
                      color: const Color(0xff000000),
                      child:
                      bar()
                  ),
                  //Text screen
                  Padding(
                    padding: EdgeInsets.only(top: 14,left: 11,right: 11,bottom: 14),
                    child: Container(
                      height: 157.h,
                      width: 353.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child:
                        Padding(
                          padding: const EdgeInsets.only(left: 13,top: 11,right: 14),
                          child: Container(
                            height: 18.h,
                              width: 326.w,
                              child: Text("Crea un testo con...",
                                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400),)),
                        )
                    ),
                  ),
                  //buttons
                  Container(
                    child: buttons(),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}
buttons(){
  return
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 191,bottom: 432),
          child: Container(
            height: 17.h,
            width: 63.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffE8E8E8)
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 5,bottom: 2,right: 15.5,left: 15.5),
              child: Text("Testo",
                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 17,right: 11,bottom: 432),
          child: Container(
            height: 17.h,
            width: 93.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffE8E8E8)
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 3,bottom: 2,right: 19,left: 19),
              child: Text("Immagine",
                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
}