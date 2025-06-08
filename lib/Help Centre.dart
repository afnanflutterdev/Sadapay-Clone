import 'package:flutter/material.dart';
import 'package:sadapay/messege.dart';

class HelpCentre extends StatelessWidget {
  const HelpCentre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/Images/Downpic.cc-166553756.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage("assets/Images/ProfileImage.jpeg"),
                      backgroundColor: Colors.red,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.red,
                    child: Text(
                      "K",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.red,
                    child: Text(
                      "A",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  Image.asset(
                    "assets/Images/cross-23.png",
                    width: 20,
                    height: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Hi, Muhammad👋\nHow can we help?",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 34),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 310,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Text(
                          "Messeges",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 190, top: 15),
                        child: Icon(Icons.message_rounded),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black12,
                    endIndent: 13,
                    indent: 13,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Text(
                          "Help",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                            left: 230,
                          ),
                          child: Image.asset(
                            "assets/Images/Icon-round-Question_mark.svg.png",
                            width: 20,
                            height: 20,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 310,
              height: 260,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 290,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search for help",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w600
                                ),
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        // Add some spacing between the TextField and Icon
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.search_outlined),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Text("Schdule of Charges",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,top: 10),
                        child: Icon(Icons.keyboard_arrow_right_sharp),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Text("Learn more about Card Deadlines",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,top: 10),
                        child: Icon(Icons.keyboard_arrow_right_sharp),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Text("How can I send money from my\nSadapay wallet? ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,top: 10),
                        child: Icon(Icons.keyboard_arrow_right_sharp),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Text("Internationl Transiction setelments\nmade ''sada''",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,top: 10),
                        child: Icon(Icons.keyboard_arrow_right_sharp),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 310,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Send us a Messages",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 110),
                    child: Image.asset("assets/Images/message.png",width: 15,height: 15,),
                  )
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 110),
                  //   child: Icon(Icons.play_arrow_outlined,),
                  // )
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
