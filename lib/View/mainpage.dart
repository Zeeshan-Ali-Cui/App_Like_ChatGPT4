import 'package:aibert/View/creaimmaginepage.dart';
import 'package:aibert/View/creaimmaginepage2.dart';
import 'package:aibert/View/creapage.dart';
import 'package:aibert/View/createstopage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
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

                  Container(

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 14,bottom: 22,right: 33),
                          child: InkWell(
                            child: Container(
                              height:34.h,
                              width:35.w,
                              child: Image.asset("assets/images/face.png"),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const creapageview()),);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17,bottom: 22,right: 33),
                          child: InkWell(
                            child: Container(
                              height:29.h,
                              width:247.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffE8E8E8)
                              ),

                              child: Padding(
                                padding: const EdgeInsets.only(top: 3.5,bottom: 3.5,left: 45,right: 45),
                                child: Text("Chiedimi qualcosa...",
                                  style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Color(0xff000000)),
                                textAlign: TextAlign.center,),
                              )
                            ),
                            onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const createstopageview()),);
                            }
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Col1
                  InkWell(
                    child: Container(
                      child: col1(),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const creaimmaginepage1()));
                    },
                  ),
                  //Buttons
                  InkWell(
                    child: Container(
                      height: 56.h,
                      width: 353.w,
                      child: button(),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const page2()));
                    },
                  ),
                  //Col2
                  Container(
                    child: col2()
                  ),
                  //Buttons
                  Container(
                    height: 56.h,
                    width: 353.w,
                    child: button1(),
                  ),
                ],
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.keyboard_arrow_up_rounded),
              backgroundColor: Colors.black,
              onPressed: () {},
            ),
          ),
        ),
      );
  }
}

button(){
  return
    Row(
      children: [
        Container(
          height: 24.h,
          width: 77.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffE8E8E8)
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 5,bottom: 2,right: 22,left: 22),
            child: Text("Note",
              style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 168),
          child: Container(
            height: 24.h,
            width: 109.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffE8E8E8)
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 5,bottom: 2,right: 23.5,left: 23.5),
              child: Text("Condividi",
                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
}

button1(){
  return
    Row(
      children: [
        Container(
          height: 24.h,
          width: 77.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffE8E8E8)
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 5,bottom: 2,right: 22,left: 22),
            child: Text("Note",
              style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 168),
          child: Container(
            height: 24.h,
            width: 109.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffE8E8E8)
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 5,bottom: 2,right: 23.5,left: 23.5),
              child: Text("Condividi",
                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
}

bar(){
  return
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10,top: 6,bottom: 8),
          child: Container(
            height: 19.h,
            width: 85.w,
            color: const Color(0xff000000),
            child: Text("AiBERT",style:
            TextStyle(fontWeight: FontWeight.w400,fontSize: 20.sp,color: Colors.white),),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 47,top: 6,bottom: 8),
          child: Container(
            height: 19.h,
            width: 100.w,
            color: const Color(0xff000000),
            child: Text("10/200tks",style:
            TextStyle(fontWeight: FontWeight.w400,fontSize: 20.sp,color: Colors.white),),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right:8,top: 6,bottom: 8),
          child: Container(
              height: 20.05.h,
              width: 15.99.w,
              color: const Color(0xff000000),
              child:Image.asset("assets/images/Splash.png")
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left:82,top: 6,bottom: 8),
          child: Container(
              height: 12.h,
              width: 20.w,
              color: const Color(0xff000000),
              child:Image.asset("assets/images/option.png")
          ),
        ),

      ],
    );
}

col1(){
  return
    Column(
      children:[
        Container(
          height: 62.h,
          width: 353.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
            color: Colors.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left:5,top: 30,bottom: 16),
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
                    padding: EdgeInsets.only(right:138,top: 14),
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
          height: 95.h,
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
                        padding: EdgeInsets.only(right:160,top: 8),
                        child: Container(
                          height: 16.h,
                          width: 83.w,
                          child: Text("Response",style:
                          TextStyle(fontWeight: FontWeight.w400,fontSize: 10.sp,color: Color(0xffCFCFCF)),),
                        ),
                      ),
                      Container(
                        height: 19.h,
                        width: 255.w,
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
                    height: 80.h,
                    width: 82.w,
                    child:Image.asset("assets/images/flower.png")
                ),
              ),
            ],
          ),
        ),
      ],
    );
}

col2(){
  return
      Column(
        children: [
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
                  padding: EdgeInsets.only(left:5,top: 30,bottom: 16),
                  child: Container(
                      height: 16.h,
                      width: 20.w,
                      color: const Color(0xff000000),
                      child:Image.asset("assets/images/T.png")
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right:138,top: 14),
                      child: Container(
                        height: 16.h,
                        width: 183.w,
                        child: Text("Request - 24.12.2022 10:53",style:
                        TextStyle(fontWeight: FontWeight.w400,fontSize: 10.sp,color: Color(0xffCFCFCF)),),
                      ),
                    ),
                    Container(
                      height: 36.h,
                      width: 326.w,
                      color: const Color(0xff000000),
                      child: TextField(
                          decoration: InputDecoration(
                              fillColor: Color(0xff000000), filled: true,
                              labelText: "Create a text with a lorem ipsum paragraph and some other text",
                              labelStyle: TextStyle(
                                color: Colors.white, //<-- SEE HERE
                              ),
                              suffixIcon: Icon(Icons.keyboard_arrow_up,color: Colors.white,) //icon at tail of input
                          )
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Container(
            height: 180.h,
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
                          padding: EdgeInsets.only(right:160,top: 8),
                          child: Container(
                            height: 16.h,
                            width: 83.w,
                            child: Text("Response",style:
                            TextStyle(fontWeight: FontWeight.w400,fontSize: 10.sp,color: Color(0xffCFCFCF)),),
                          ),
                        ),
                        Container(
                            height: 150.h,
                            width: 328.w,
                            child: Text(
                              "Lorem ipsum dolor sit amet consectetur adipiscing elit dignissim nam,"
                                  " dui vel augue facilisis ut fringilla tincidunt blandit porta, "
                                  "magna in nibh aenean cursus maecenas porttitor netus. "
                                  "Litora phasellus ornare fringilla feugiat per est mattis duis porttitor aliquet diam penatibus cubilia cras interdum,"
                                  " montes taciti conubia etiam facilisi neque massa ac auctor suspendisse mi proin habitant sodales."
                                  " Primis class gravida ornare condimentum nisi proin interdum orci sollicitudin, "
                                  "vehicula molestie lectus bibendum mauris curabitur inceptos luctus, praesent natoque mollis rutrum est aenean magna quis.",
                              style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}