import 'package:aibert/View/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return    AnnotatedRegion
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
                      child: immaginepage()
                  ),
                ),
                //buttons
                Container(
                  child: immaginepage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
immaginepage(){
  return
    Column(
      children:[
        Container(
          height: 79.h,
          width: 353.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
            color: Colors.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left:5,top: 30,bottom: 36),
                child: Container(
                    height: 16.h,
                    width: 20.w,
                    color: const Color(0xff000000),
                    child:Image.asset("assets/images/img.png")
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right:138,top: 15),
                    child: Container(
                      height: 16.h,
                      width: 183.w,
                      child: Text("Request - 24.12.2022 10:53",style:
                      TextStyle(fontWeight: FontWeight.w400,fontSize: 10.sp,color: Color(0xffCFCFCF)),),
                    ),
                  ),
                  Container(
                    height: 18.h,
                    width: 326.w,
                    color: const Color(0xff000000),
                    child: TextField(
                        decoration: InputDecoration(
                            fillColor: Color(0xff000000), filled: true,
                            labelText: "Create an image with...",
                            labelStyle: TextStyle(
                              color: Colors.white, //<-- SEE HERE
                            ),
                            suffixIcon: Icon(Icons.keyboard_arrow_down,color: Colors.white,) //icon at tail of input
                        )
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
        Container(
          height: 247.h,
          width: 353.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
            color: Color(0xffFAFAFA),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Container(
                          height: 16.h,
                          width: 100.w,
                          child: Text("Response",style:
                          TextStyle(fontWeight: FontWeight.w400,fontSize: 10.sp,color: Color(0xffCFCFCF)),),
                        ),
                      ),
                      Container(
                        height: 19.h,
                        width: 120.w,
                        child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: "Lorem ipsum dolor sit....",
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ), //icon at tail of input
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8,bottom: 7,right: 6),
                child: Container(
                  height: 210.h,
                  width: 215.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/flower.png")
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
}