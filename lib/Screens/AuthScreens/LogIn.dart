import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:neerxdashboard/Routes.dart';
import 'package:neerxdashboard/Services/PostServices.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final key = GlobalKey<FormState>();
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
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  .merge(neerx)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 0.33 * width, top: 0.2 * height),
                          child: Text(
                            "Login",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .merge(style1),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Form(
                          key: key,
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 0.28 * width, top: 0.04 * height),
                              child: Text(
                                "Enter your email id",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .merge(style3),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 0.06 * width,
                                  top: 0.02 * height,
                                  left: 0.065 * width),
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Color(0xffD2D8CF)),
                                ),
                                child: TextFormField(
                                  controller: email,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  validator: (text) {
                                    if (text == null || text.isEmpty) {
                                      return 'Email is empty';
                                    }
                                    if (!text.contains("@")) {
                                      return "Enter valid mail Id";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 0.27 * width, top: 0.02 * height),
                              child: Text(
                                "Enter your password",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .merge(style3),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 0.06 * width,
                                  top: 0.02 * height,
                                  left: 0.065 * width),
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Color(0xffD2D8CF)),
                                ),
                                child: TextFormField(
                                  controller: password,
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
                                  top: 0.01 * height, left: 0.30 * width),
                              child: InkWell(
                                onTap: () async {
                                  Navigator.pushNamed(
                                      context, Routes.forgotPassword);
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: GoogleFonts.mulish(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 0.010 * width,
                                      color: Color(0xff69bf87)),
                                ),
                              ),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0.055 * height,
                              left: 0.065 * width,
                              right: 0.060 * width),
                          child: InkWell(
                            onTap: () async {
                              if (key.currentState.validate()) {
                                PostServices p1 = PostServices();
                                var x = await p1.adminLogIn(
                                    email.text, password.text);
                                if (x.accessToken.isNotEmpty) {
                                  Navigator.pushNamed(
                                      context, Routes.dashboard);
                                }
                              }
                            },
                            child: CustomButton1(
                              txt1: "Log In",
                              height: 50,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .merge(style2)),
                            InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, Routes.SignUp);
                                },
                                child: Text(
                                  "Signup",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      .merge(style2)
                                      .copyWith(
                                          color: Colors.green,
                                          decoration: TextDecoration.underline),
                                ))
                          ],
                        )
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
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  .merge(neerx)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 0.33 * width, top: 0.2 * height),
                          child: Text(
                            "Login",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .merge(style1),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Form(
                          key: key,
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 0.28 * width, top: 0.04 * height),
                              child: Text(
                                "Enter your email id",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .merge(style3),
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
                                  controller: email,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  validator: (text) {
                                    if (text == null || text.isEmpty) {
                                      return 'Email is empty';
                                    }
                                    if (!text.contains("@")) {
                                      return "Enter valid mail Id";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 0.27 * width, top: 0.02 * height),
                              child: Text(
                                "Enter your password",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .merge(style3),
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
                                  controller: password,
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
                                  top: 0.01 * height, left: 0.30 * width),
                              child: InkWell(
                                onTap: () async {
                                  Navigator.pushNamed(
                                      context, Routes.forgotPassword);
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: GoogleFonts.mulish(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 0.010 * width,
                                      color: Color(0xff69bf87)),
                                ),
                              ),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0.055 * height,
                              left: 0.065 * width,
                              right: 0.060 * width),
                          child: InkWell(
                            onTap: () async {
                              PostServices p1 = PostServices();
                              var x = await p1.adminLogIn(
                                  email.text, password.text);
                              if (x.accessToken.isNotEmpty) {
                                Navigator.pushNamed(context, Routes.dashboard);
                              }
                            },
                            child: CustomButton1(
                              txt1: "Log In",
                              height: 50,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .merge(style2)),
                            InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, Routes.SignUp);
                                },
                                child: Text(
                                  "Signup",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      .merge(style2)
                                      .copyWith(
                                          color: Colors.green,
                                          decoration: TextDecoration.underline),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
              .bodyText2
              .copyWith(fontSize: 0.014 * width, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
