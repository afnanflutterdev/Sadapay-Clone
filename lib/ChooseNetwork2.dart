import 'package:flutter/material.dart';
import 'package:sadapay/ChooseNetwork.dart';

class Choosenetwork2 extends StatefulWidget {
  const Choosenetwork2({super.key});

  @override
  State<Choosenetwork2> createState() => _Choosenetwork2State();
}

bool isFirstLogoSelected = true;
bool isSecondLogoSelected = true;

class _Choosenetwork2State extends State<Choosenetwork2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Choosenetwork()));
            },
            child: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          "Choose Network",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            DefaultTabController(
              length: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,

                  dividerColor: Colors.black12,
                  padding: const EdgeInsets.all(10),
                  indicatorColor: Colors.deepOrangeAccent,
                  indicatorWeight: 5,
                  onTap: (val) {
                    debugPrint(val.toString());
                    if (val == 0) {
                      isFirstLogoSelected = true;
                      isSecondLogoSelected = false;
                    } else {
                      isFirstLogoSelected = false;
                      isSecondLogoSelected = true;
                    }
                    setState(() {});
                  },
                  tabs: [
                    Tab(
                      child: Image.asset(
                        "assets/Images/mastercardicon.png",
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Tab(
                      child: Image.asset("assets/Images/Paypak-logo.png"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            if(isFirstLogoSelected)
              Column(
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "SadaPay Masterard",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Global acceptance at over 53 million\n merchants around the world.",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15, bottom: 17),
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "One - time fee of Rs. 1,260 + tax and no\n annual fee",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Enabled for International transiction",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Free delivery in 3-5 business days",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "3D secured for online shopping",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Advance card controls in your app",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Contactless payments (tap to pay)",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    width: 320,
                    height: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrangeAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Continue",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white,fontSize: 18),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        )),
                  )
                ],

              )
            else
              Column(
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "SadaPay Paypak",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Pakistan's own card network with local\ndiscounts and insurance benefits",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.square,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Currently out of stock",
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.square,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Annual fee of Rs. 1,200 + tax",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.square,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Only for local purcheses in Pakistan",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ), const SizedBox(height: 15),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.square,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "The card is only available in ",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ), Text(
                        "teal",
                        style: TextStyle(color: Colors.tealAccent, fontSize: 16,fontWeight: FontWeight.bold),
                      ),SizedBox(width: 2,),
                      Text(
                        "color",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Discount at Golootlo merchents",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Rs. 100,000 life insurance benfits in\ncase of death (all causes)",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    width: 320,
                    height: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrangeAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Continue",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white,fontSize: 18),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        )),
                  )
                ],
              )



          ],
        ),
      ),
    );
  }
}
