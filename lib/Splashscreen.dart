import 'package:flutter/material.dart';
import 'package:sadapay/HomeScreen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()));
    });
    return Scaffold(

      backgroundColor: Color.fromRGBO(	251, 128, 110,1),
      body: Center(

        child: Image.asset("assets/Images/images.jpeg",height: 150,width:150 ,)
      ),
    );
  }
}
