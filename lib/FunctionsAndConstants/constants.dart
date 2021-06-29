
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

bool isDashboard=true,isFarm=false,isNowcast=false,isForecast=false,isNotifications=false,isHelp=false,isManageNotif=false;
String baseUrl = "http://13.232.234.174:8888/";
String acToken;
bool notifsTab=false;
TextStyle style1 = GoogleFonts.mulish(
  fontWeight: FontWeight.w700,
  color: Colors.black
);
TextStyle style3 = GoogleFonts.mulish(
    fontWeight: FontWeight.w400,
    color: Colors.black
);
TextStyle style2 = GoogleFonts.mulish(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black
);
TextStyle neerx = TextStyle(
    color: Color(0xff69BF87),
    fontWeight: FontWeight.w700,
);
