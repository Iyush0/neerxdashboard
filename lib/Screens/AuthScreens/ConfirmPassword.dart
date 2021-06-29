import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({Key key}) : super(key: key);

  @override
  _ConfirmPasswordState createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ResponsiveBuilder(builder: (context, sizing) {
          if (sizing.isDesktop) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/neerxlogin1.jpg"))),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 0.04 * height),
                          child: Text("NEER X",
                              style: TextStyle(
                                  color: Color(0xff69BF87),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 0.030 * width)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 0.25 * width, top: 0.2 * height),
                          child: Text(
                            "Change Password",
                            style: GoogleFonts.mulish(
                                fontSize: 0.015 * width,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 0.29 * width, top: 0.04 * height),
                          child: Text(
                            "Enter Password",
                            style: GoogleFonts.mulish(
                                fontSize: 0.011 * width,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff404040)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 0.06 * width,
                              top: 0.02 * height,
                              left: 0.065 * width),
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
                              right: 0.33 * width, top: 0.02 * height),
                          child: Text(
                            "Confirm",
                            style: GoogleFonts.mulish(
                                fontSize: 0.011 * width,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff404040)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 0.06 * width,
                              top: 0.02 * height,
                              left: 0.065 * width),
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
                              top: 0.055 * height,
                              left: 0.065 * width,
                              right: 0.060 * width),
                          child: CustomButton1(
                            txt1: "Submit",
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
          if (sizing.isTablet) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/neerxlogin1.jpg"))),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 0.04 * height),
                          child: Text("NEER X",
                              style: TextStyle(
                                  color: Color(0xff69BF87),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 0.030 * width)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 0.25 * width, top: 0.2 * height),
                          child: Text(
                            "Change Password",
                            style: GoogleFonts.mulish(
                                fontSize: 0.015 * width,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 0.29 * width, top: 0.04 * height),
                          child: Text(
                            "Enter Password",
                            style: GoogleFonts.mulish(
                                fontSize: 0.011 * width,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff404040)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 0.06 * width,
                              top: 0.02 * height,
                              left: 0.065 * width),
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
                              right: 0.33 * width, top: 0.02 * height),
                          child: Text(
                            "Confirm",
                            style: GoogleFonts.mulish(
                                fontSize: 0.011 * width,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff404040)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 0.06 * width,
                              top: 0.02 * height,
                              left: 0.065 * width),
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
                              top: 0.055 * height,
                              left: 0.065 * width,
                              right: 0.060 * width),
                          child: CustomButton1(
                            txt1: "Submit",
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
          if (sizing.isMobile) {
            return Container(
              child: Center(
                child: Text("Open the website on a desktop or laptop"),
              ),
            );
          }
          return CircularProgressIndicator();
        }),
      ),
    );
  }
}

class CustomButton1 extends StatefulWidget {
  final double height;
  final String txt1;

  const CustomButton1({Key key, this.height, this.txt1}) : super(key: key);
  @override
  _CustomButton1State createState() => _CustomButton1State();
}

class _CustomButton1State extends State<CustomButton1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xff69bf87),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          widget.txt1,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .merge(style2)
              .copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
