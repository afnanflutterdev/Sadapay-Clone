import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sadapay/ChooseNetwork.dart';
import 'package:sadapay/CustomNavBar.dart';
import 'package:sadapay/HomeScreen.dart';
import 'package:sadapay/PhysicalCard.dart';

class MyCardsScreen extends StatefulWidget {
  @override
  _MyCardsScreenState createState() => _MyCardsScreenState();
}

class _MyCardsScreenState extends State<MyCardsScreen> {
  bool isVirtualSelected = true;
  bool isPhysicalCardSelected = true;
  bool isCardFrozen = false;
  bool isFrozen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Customnavbar()));
          },
        ),
        title: Text("My cards",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: DefaultTabController(
                length: 2,
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[300],
                  ),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.transparent,
                      indicator: BoxDecoration(
                        color: Colors.white, // Change tab highlight color
                        borderRadius: BorderRadius.circular(50),
                      ),
                      onTap: (val) {
                        debugPrint(val.toString());
                        if (val == 0) {
                          isVirtualSelected = true;
                          isPhysicalCardSelected = false;
                        } else {
                          isPhysicalCardSelected = true;
                          isVirtualSelected = false;
                        }
                        setState(() {

                        });
                      },
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey[600],
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600
                      ),
                      tabs: [
                        Tab(text: "Virtual"),
                        Tab(text: "Physical"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            if(isVirtualSelected)
            Center(
              child: Container(
                width: 205,
                height: 330,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(242, 247, 247, 1),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: Image.asset(
                                "assets/Images/sadapaycolouredlogo_tp.png",
                                width: 40,
                                height: 40,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: Text(
                                "Virtual",
                                style: TextStyle(
                                  color: Colors.grey[500],
                                ),
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Text(
                                ". . . .\n. . . .\n. . . .",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12, top: 5),
                              child: Text(
                                "6 8 4 1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 190, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Exp date",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[500],
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            ". . / . .    ",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 220, left: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "CVC  ",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[500],
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                ". . .    ",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 240),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(132, 145, 153, 1),
                                  borderRadius: BorderRadius.circular(100)),
                              child: Center(
                                  child: Text(
                                    "View",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                            SizedBox(width: 8),
                            Container(
                              width: 80,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(132, 145, 153, 1),
                                  borderRadius: BorderRadius.circular(100)),
                              child: Center(
                                  child: Text(
                                    "Copy",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            )

            else
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
            SizedBox(height: 20,),
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
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Choosenetwork()));
                        },
                        child: Icon(Icons.arrow_forward,color: Colors.white,)),
                  )
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
