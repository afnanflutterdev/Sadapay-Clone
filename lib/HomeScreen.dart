import 'package:flutter/material.dart';
import 'package:sadapay/LoadMoney.dart';
import 'package:sadapay/Mycard.dart';
import 'package:sadapay/RequestMoney.dart';
import 'package:sadapay/Reward.dart';
import 'package:sadapay/TransictionHistory.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 246, 247, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCardsScreen()));
                    },
                    child: Container(
                      width: 170,
                      height: 248,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(36, 237, 203,1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15,top: 12),
                                child: Text(
                                  "Current Balance",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,),
                                child: Text(
                                  "Rs. 251",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28),
                                ),
                              ),
                              SizedBox(
                                height:110,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Image.asset(
                                        "assets/Images/mastercard-logo.png",
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15,bottom: 5),
                                    child: Icon(Icons.arrow_forward,size: 25,color: Colors.white,),
                                  )
                                  ]),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // SizedBox(width: 10,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: 128,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(30, 167, 246,1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20,top: 13),
                                  child: Icon(Icons.arrow_downward,color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18,top: 13),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestMoney()));
                                    },
                                    child: Text("Load\nMoney",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: 128,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 128, 110,1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,left: 80),
                              child: Icon(Icons.arrow_upward,color: Colors.white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15,right: 28),
                              child: InkWell(onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoadMoneyScreen()));
                              },
                                child: Text("Send &\nRequest",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Container(
                  width: 310,
                  padding: EdgeInsets.all(10), // Added padding for better spacing
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align items properly
                    children: [
                      /// **Header Section**
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Transaction"), // Fixed typo
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Transictionhistory()));
                              },
                              child: Text(
                                "See all",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // SizedBox(height: 10), // Added space between header and ListTile

                      /// **Transaction List Item**
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10), // Added padding
                        leading: Image.asset(
                          "assets/Images/SendTrans.png",
                          width: 50,
                          height: 50,
                        ),
                        title: Text(
                          "MUHAMMAD AFNAN",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                          overflow: TextOverflow.ellipsis, // Prevents text overflow
                        ),
                        subtitle: Text("8:27 A.M"),
                        trailing: Padding(
                          padding: const EdgeInsets.only(left: 13,bottom: 20),
                          child: Text(
                            "Rs. 100",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),



            Column(
              children: [
SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Reward()));
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25.0,),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Earn Rs. 1000 for",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "every SadaBiz invite!",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "🤩 Start earning",
                                    style: TextStyle(
                                        color: Colors.deepOrangeAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Icon(Icons.arrow_forward,color: Colors.deepOrangeAccent,),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/Images/Money3.jpg',
                            // Replace with your asset image path
                            height: 100,
                            width: 100,
                          ),
                        ),
                    Transform.translate(
                      offset: Offset(-20,-40),
                      // Adjust the position as needed
                      child: Image.asset("assets/Images/X.png",color: Colors.black,width: 20,height: 20,))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Discover",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.play_circle_filled,
                      color: Color.fromRGBO(251, 128, 110, 1),
                      size: 18,
                    ),
                    SizedBox(width: 210,),
                    Icon(Icons.cancel_outlined,size:20),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      width: 120,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Transform.translate(
                              offset: const Offset(0, -20),
                              child: Image.asset(
                                "assets/Images/Rasst.png",
                                width: 80,
                                height: 80,
                              )),
                          const Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              "What is\n Rasst?",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 120,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Transform.translate(
                              offset: const Offset(0, -20),
                              child: Image.asset(
                                "assets/Images/Rasst.png",
                                width: 80,
                                height: 80,
                              )),
                          const Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              "Welcome to \n Sadapay!",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 120,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Transform.translate(
                              offset: const Offset(0, -20),
                              child: Image.asset(
                                "assets/Images/Rasst.png",
                                width: 80,
                                height: 80,
                              )),
                          const Padding(
                            padding: EdgeInsets.only(),
                            child: Text(
                              "Load money to \n your account",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 120,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Transform.translate(
                              offset: const Offset(0, -20),
                              child: Image.asset(
                                "assets/Images/Rasst.png",
                                width: 80,
                                height: 80,
                              )),
                          const Padding(
                            padding: EdgeInsets.only(),
                            child: Text(
                              "Order your\n physical card",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 120,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Transform.translate(
                              offset: const Offset(0, -20),
                              child: Image.asset(
                                "assets/Images/Rasst.png",
                                width: 80,
                                height: 80,
                              )),
                          const Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              "Use your \nvirtual card",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 120,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Transform.translate(
                              offset: const Offset(0, -20),
                              child: Image.asset(
                                "assets/Images/Rasst.png",
                                width: 80,
                                height: 80,
                              )),
                          const Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              "Secure your\n Account",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 120,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Transform.translate(
                              offset: const Offset(0, -20),
                              child: Image.asset(
                                "assets/Images/Rasst.png",
                                width: 80,
                                height: 80,
                              )),
                          const Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              "How to\nuse Rasst?",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
