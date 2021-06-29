import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:neerxdashboard/Services/PostServices.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Routes.dart';
import 'ConfirmPassword.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  final key = GlobalKey<FormState>();
  PostServices postServices  = PostServices();
 bool validateForm()
  {
      if(key.currentState.validate())
        {
          return true;
        }
      return false;
  }

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
                              child: Text("NEER X", style: Theme.of(context).textTheme.headline3.merge(neerx),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 0.32*width, top: 0.1*height),
                              child: Text(
                                "Register",
                                style: Theme.of(context).textTheme.headline6.merge(style1),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Form(
                              key: key,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 0.34*width, top: 0.04*height),
                                    child: Text(
                                      "Name",
                                      style: Theme.of(context).textTheme.subtitle1.merge(style3),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 0.06*width, top: 0.02*height, left: 0.065*width),
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Color(0xffD2D8CF)),
                                      ),
                                      child: TextFormField(
                                        controller: name,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none,
                                        ),
                                        validator: (text) {
                                          if (text == null || text.isEmpty) {
                                            return 'Name  is empty';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 0.30*width, top: 0.04*height),
                                    child: Text(
                                      "Phone Number",
                                      style: Theme.of(context).textTheme.subtitle1.merge(style3),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 0.06*width, top: 0.02*height, left: 0.065*width),
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Color(0xffD2D8CF)),
                                      ),
                                      child: TextFormField(
                                        controller: phone,
                                        keyboardType: TextInputType.phone,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                        ),
                                        validator: (text) {
                                          if (text == null || text.isEmpty) {
                                            return 'Phone Number  is empty';
                                          }
                                          if (text.length < 10) {
                                            return 'Enter valid phone number';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 0.34*width, top: 0.02*height),
                                    child: Text(
                                      "Email",
                                      style: Theme.of(context).textTheme.subtitle1.merge(style3),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 0.06*width, top: 0.02*height, left: 0.065*width),
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
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none,
                                        ),
                                        validator: (text) {
                                          if (text == null || text.isEmpty) {
                                            return 'Email id is empty';
                                          }
                                          if (!text.contains("@") || !text.contains(".com")) {
                                            return 'Enter valid email';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 0.32*width, top: 0.02*height),
                                    child: Text(
                                      "Password",
                                      style: Theme.of(context).textTheme.subtitle1.merge(style3),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 0.06*width, top: 0.02*height, left: 0.065*width),
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
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none,
                                        ),
                                        validator: (text) {
                                          if (text == null || text.isEmpty) {
                                            return 'Password  is empty';
                                          }
                                          if (text.length < 6) {
                                            return 'Enter valid Password';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 0.055*height, left: 0.065*width, right: 0.060*width),
                              child: InkWell(
                                onTap: ()async{
                                  if(key.currentState.validate())
                                    {
                                          dynamic x = await postServices.adminSignUp(name.text,password.text,email.text,phone.text);
                                          print(x);
                                          if(x==200){
                                            Navigator.pushNamed(context, Routes.SignIn);
                                          }
                                    }
                               //   Navigator.pushNamed(context, Routes.SignIn);
                                },
                                child: CustomButton1(
                                  txt1: "Register",
                                  height: 50,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account?",style: Theme.of(context).textTheme.subtitle1.merge(style2)),
                                InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context, Routes.SignIn);
                                    },
                                    child: Text("Login",style: Theme.of(context).textTheme.subtitle2.merge(style2).copyWith(color: Colors.green,decoration: TextDecoration.underline),))
                              ],
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
                              child: Text("NEER X", style: Theme.of(context).textTheme.headline3.merge(neerx),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 0.32*width, top: 0.1*height),
                              child: Text(
                                "Register",
                                style: Theme.of(context).textTheme.headline6.merge(style1),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Form(
                              key: key,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 0.34*width, top: 0.04*height),
                                    child: Text(
                                      "Name",
                                      style: Theme.of(context).textTheme.subtitle1.merge(style3),
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
                                        controller: name,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                        validator: (text) {
                                          if (text == null || text.isEmpty) {
                                            return 'Name  is empty';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 0.30*width, top: 0.04*height),
                                    child: Text(
                                      "Phone Number",
                                      style: Theme.of(context).textTheme.subtitle1.merge(style3),
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
                                        controller: phone,
                                        keyboardType: TextInputType.phone,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                        validator: (text) {
                                          if (text == null || text.isEmpty) {
                                            return 'Phone Number  is empty';
                                          }
                                          if (text.length < 10) {
                                            return 'Enter valid phone number';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 0.34*width, top: 0.02*height),
                                    child: Text(
                                      "Email",
                                      style: Theme.of(context).textTheme.subtitle1.merge(style3),
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
                                        controller: email,
                                        keyboardType: TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                        validator: (text) {
                                          if (text == null || text.isEmpty) {
                                            return 'Email id is empty';
                                          }
                                          if (!text.contains("@") || !text.contains(".com")) {
                                            return 'Enter valid email';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 0.32*width, top: 0.02*height),
                                    child: Text(
                                      "Password",
                                      style: Theme.of(context).textTheme.subtitle1.merge(style3),
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
                                        controller: password,
                                        keyboardType: TextInputType.visiblePassword,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                        validator: (text) {
                                          if (text == null || text.isEmpty) {
                                            return 'Password  is empty';
                                          }
                                          if (text.length < 6) {
                                            return 'Enter valid Password';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 0.055*height, left: 0.065*width, right: 0.060*width),
                              child: InkWell(
                                onTap: ()async{
                                  if(key.currentState.validate())
                                  {
                                    dynamic x = await postServices.adminSignUp(name.text,password.text,email.text,phone.text);
                                    print(x);
                                    if(x==200){
                                      Navigator.pushNamed(context, Routes.SignIn);
                                    }
                                  }
                                  //   Navigator.pushNamed(context, Routes.SignIn);
                                },
                                child: CustomButton1(
                                  txt1: "Register",
                                  height: 50,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account?",style: Theme.of(context).textTheme.subtitle1.merge(style2)),
                                InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context, Routes.SignIn);
                                    },
                                    child: Text("Login",style: Theme.of(context).textTheme.subtitle2.merge(style2).copyWith(color: Colors.green,decoration: TextDecoration.underline),))
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
            }
        ),
      ),
    );
  }
}
