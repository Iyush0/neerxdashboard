import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Routes.dart';
import 'ConfirmPassword.dart';



class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
      height: double.infinity,
      width: double.infinity,
      child: ResponsiveBuilder(
          builder: (context, sizing) {
            if(sizing.isDesktop)
            {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/neerxlogin1.jpg")
                          )
                      ),),
                  ),
                  Expanded(
                    child:Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 0.04*height),
                            child: Text("NEER X", style: TextStyle(
                                color: Color(0xff69BF87),
                                fontWeight: FontWeight.w700,
                                fontSize: 0.030*width
                            )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0.21*width, top: 0.10*height),
                            child: Text(
                              "Forgot Your Password",
                              style: GoogleFonts.mulish(fontSize: 0.015*width,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0.25*width, top: 0.04*height),
                            child: Text(
                              "Enter Registered Email",
                              style: GoogleFonts.mulish(fontSize: 0.011*width,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff404040)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: 0.06*width, top: 0.02*height, left: 0.065*width),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xffD2D8CF)),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Password  is empty';
                                  }
                                  if (text.length < 3) {
                                    return 'Enter valid Password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 0.045*height, left: 0.065*width, right: 0.060*width),
                            child: CustomButton1(
                              txt1: "Send OTP",
                              height: 50,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0.26*width, top: 0.07*height),
                            child: Text(
                              "OTP Verification",
                              style: GoogleFonts.mulish(fontSize: 0.015*width,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0.32*width, top: 0.04*height),
                            child: Text(
                              "Enter OTP",
                              style: GoogleFonts.mulish(fontSize: 0.011*width,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff404040)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: 0.06*width, top: 0.02*height, left: 0.065*width),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xffD2D8CF)),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Password  is empty';
                                  }
                                  if (text.length < 3) {
                                    return 'Enter valid Password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 0.045*height, left: 0.065*width, right: 0.060*width),
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, Routes.confirmPassword);
                                },
                                child: CustomButton1(
                                  txt1: "Verify",
                                  height: 50,
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
            if(sizing.isTablet)
            {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/neerxlogin1.jpg")
                          )
                      ),),
                  ),
                  Expanded(
                    child:Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 0.04*height),
                            child: Text("NEER X", style: TextStyle(
                                color: Color(0xff69BF87),
                                fontWeight: FontWeight.w700,
                                fontSize: 0.030*width
                            )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0.21*width, top: 0.10*height),
                            child: Text(
                              "Forgot Your Password",
                              style: GoogleFonts.mulish(fontSize: 0.015*width,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0.25*width, top: 0.04*height),
                            child: Text(
                              "Enter Registered Email",
                              style: GoogleFonts.mulish(fontSize: 0.011*width,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff404040)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: 0.06*width, top: 0.02*height, left: 0.065*width),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xffD2D8CF)),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Password  is empty';
                                  }
                                  if (text.length < 3) {
                                    return 'Enter valid Password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 0.045*height, left: 0.065*width, right: 0.060*width),
                            child: CustomButton1(
                              txt1: "Send OTP",
                              height: 50,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0.26*width, top: 0.07*height),
                            child: Text(
                              "OTP Verification",
                              style: GoogleFonts.mulish(fontSize: 0.015*width,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0.32*width, top: 0.04*height),
                            child: Text(
                              "Enter OTP",
                              style: GoogleFonts.mulish(fontSize: 0.011*width,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff404040)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: 0.06*width, top: 0.02*height, left: 0.065*width),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xffD2D8CF)),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Password  is empty';
                                  }
                                  if (text.length < 3) {
                                    return 'Enter valid Password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 0.045*height, left: 0.065*width, right: 0.060*width),
                            child: InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, Routes.confirmPassword);
                              },
                              child: CustomButton1(
                                txt1: "Verify",
                                height: 50,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
            return Container(
              child: Center(
                child: Text("Open the website on a desktop or laptop"),
              ),
            );

          }
      ),
    ),
    );
  }
}
