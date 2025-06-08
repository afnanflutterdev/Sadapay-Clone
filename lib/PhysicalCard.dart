import 'package:flutter/material.dart';

class Physicalcard extends StatelessWidget {
  const Physicalcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
body: Column(
  children: [
    SizedBox(height: 150,),
    Image.asset("assets/Images/Physicalcard.jpg"),
    SizedBox(height: 20,),
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text("Request Your Card",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 29
          ),),
        ),
      ],
    ),
    SizedBox(height: 10,),
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text("Sadapay offer Debut Cards from the\nMasterCard and Paypak card networks.",style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey,
              fontSize: 17
          ),),
        ),
      ],
    ),
    SizedBox(height: 130,),
    Container(
      width: 315,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.deepOrangeAccent
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Choose a card network",style: TextStyle(
              color: Colors.white,
              fontSize: 18,fontWeight: FontWeight.w700
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.arrow_forward,color: Colors.white,),
          )
        ],
      ),
    )
  ],
),
    );
  }
}
