import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sadapay/Choose%20biller.dart';
import 'package:sadapay/ChooseNetwork.dart';
import 'package:sadapay/ChooseNetwork2.dart';
import 'package:sadapay/CustomNavBar.dart';
import 'package:sadapay/English.dart';
import 'package:sadapay/Help%20Centre.dart';
import 'package:sadapay/HelpCentre2.dart';
import 'package:sadapay/HomeScreen.dart';
import 'package:sadapay/LoadMoney.dart';
import 'package:sadapay/ManageDevices.dart';
import 'package:sadapay/MobileTopUp.dart';
import 'package:sadapay/More.dart';
import 'package:sadapay/Payement.dart';
import 'package:sadapay/PhysicalCard.dart';
import 'package:sadapay/Splashscreen.dart';
import 'package:sadapay/TransictionHistory.dart';
import 'package:sadapay/main.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.white),

          textTheme: GoogleFonts.robotoFlexTextTheme()),
      debugShowCheckedModeBanner: false,
      home:Customnavbar(),
    );
  }
}



