import 'package:aibert/View/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class createstopageview extends StatefulWidget {
  const createstopageview({Key? key}) : super(key: key);

  @override
  State<createstopageview> createState() => _createstopageviewState();
}

class _createstopageviewState extends State<createstopageview> {
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
                  //Col2 function
                  Padding(
                    padding: const EdgeInsets.only(top: 11,left: 11,right: 11,bottom: 8),
                    child: Container(
                        child: col2()
                    ),
                  ),
                  //buttons
                  Container(
                    child: reusebuttons(),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}
reusebuttons(){
  return
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 166,bottom: 272),
          child: Container(
            height: 17.h,
            width: 88.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffE8E8E8)
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 3,bottom: 2,right: 22.5,left: 22.5),
              child: Text("Riprova",
                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22,right: 11,bottom: 272),
          child: Container(
            height: 17.h,
            width: 88.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffE8E8E8)
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 3,bottom: 2,right: 20,left: 20),
              child: Text("Approva",
                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
}