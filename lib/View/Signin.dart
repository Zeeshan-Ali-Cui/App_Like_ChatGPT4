import 'package:aibert/View/Loginpage.dart';
import 'package:aibert/View/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class signinpage extends StatefulWidget {
  const signinpage({Key? key}) : super(key: key);

  @override
  State<signinpage> createState() => _signinpageState();
}

class _signinpageState extends State<signinpage> {
  bool obs = true;

  @override
  Widget build(BuildContext context) {
    return
      AnnotatedRegion
      <SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light
            .copyWith(statusBarColor: Color(0xff000000)),
        child: SafeArea(
          child: Scaffold(
            backgroundColor:  Color(0xff000000),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  //Welcome Text
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Container(
                      height: 25.h,
                      width: 375.w,
                      child: Text("Welcome to AiBERT",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.sp,color: Colors.white),
                        textAlign: TextAlign.center,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 30),
                    child: Container(
                      height: 20.h,
                      width: 375.w,
                      child: Text("Add an Account",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp,color: Colors.white),
                        textAlign: TextAlign.center,),
                    ),
                  ),

                  //Email,Password and Login
                  Padding(
                      padding: EdgeInsets.all(32.0),
                      child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 3, color: Color(0xffFF24BD)), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                            labelText: 'Name',
                            suffixIcon: Icon(Icons.person_outline,color: Color(0xffFF24BD)),
                          ))),
                  Padding(
                      padding: EdgeInsets.all(32.0),
                      child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 3, color: Color(0xffFF24BD)), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                            labelText: 'Phone Number',
                            suffixIcon: Icon(Icons.phone,color: Color(0xffFF24BD)),
                          ))),
                  Padding(
                      padding: EdgeInsets.all(32.0),
                      child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 3, color: Color(0xffFF24BD)), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                            labelText: 'Email',
                            suffixIcon: Icon(Icons.email_outlined,color: Color(0xffFF24BD)),
                          ))),
                  Padding(
                      padding: EdgeInsets.all(32.0),
                      child: TextField(
                        obscureText: obs,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 3, color: Color(0xffFF24BD)), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                            labelText: 'Password',
                            suffixIcon:
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      obs = !obs;
                                    });
                                  },
                                  child: obs
                                      ? Icon(Icons.lock,color: Color(0xffFF24BD),)
                                      : Icon(Icons.lock_open_sharp,color: Color(0xffFF24BD),
                          ))))),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: InkWell(
                      child: Container(
                        height: 30.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffFF24BD)
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(top: 5,bottom: 5),
                          child: Text('Sign up',style: TextStyle(
                              fontSize: 20.sp,fontWeight: FontWeight.w400,color: Colors.white
                          ),textAlign: TextAlign.center,),
                        ),
                      ),
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> mainpage()));
                      },
                    ),
                  ),

                  //Already have account sign in
                  Padding(
                    padding: const EdgeInsets.only(top: 50,),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('Already Hava an account?',style: TextStyle(color: Colors.white),),
                          TextButton(
                            child: const Text(
                              'Log in',
                              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Color(0xffFF24BD)),
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> login()));
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}
