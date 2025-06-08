import 'package:flutter/material.dart';
import 'package:sadapay/AcctStatement.dart';
import 'package:sadapay/Help%20Centre.dart';
import 'package:sadapay/IncreaseLimit.dart';
import 'package:sadapay/ManageDevices.dart';
import 'package:sadapay/Reward.dart';
import 'package:sadapay/Splashscreen.dart';
import 'package:url_launcher/url_launcher.dart';

class More extends StatelessWidget {

  const More({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(242, 246, 247, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  width: 342,
                  height: 70,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                          backgroundColor: Colors.green[50],
                          radius: 20,
                          child: const Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Muhammad Afnan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  width: 342,
                  height: 170,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 240, top: 15),
                        child: Text("Limit",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Incoming",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text("Rs. 50,000 left",
                                style: TextStyle(
                                    color: Color.fromRGBO(251, 128, 110, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 9.0, // Line thickness
                        // Line color
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(251, 128, 110, 1),
                            borderRadius: BorderRadius.circular(100)),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 19.0), // Left and right spacing
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Your Rs.50k monthly limit resets on the first\n of the next month",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  width: 342,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          // shadow color with opacity
                          spreadRadius: 1,
                          // spread radius of the shadow
                          blurRadius: 10,
                          // blur effect
                          offset: const Offset(0, 3), // offset of the shadow (x, y)
                        ),
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(13))),
                  child: ListTile(
                    leading: Image.asset(
                      "assets/Images/2.png",
                      height: 60,
                      width: 60,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const IncreaseLimit()));
                        },
                        child: const Text(
                          "Increase my limit",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    subtitle: const Text(
                      "Verify your biometric to bump\n your limit to 400k PKR",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  width: 342,
                  height: 115,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              "Documents",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Image.asset(
                              "assets/Images/222.png",
                              height: 55,
                              width: 55,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Acctstatement()));
                              },
                              child: const Text(
                                "Account Statement",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 17),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 19,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  width: 342,
                  height: 80,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Reward()));
                              },
                              child: const Text(
                                "Refer and Earn",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 104),
                            child: Image.asset(
                              "assets/Images/gift.png",
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
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
                  Icon(
                    Icons.play_circle_filled,
                    color: Color.fromRGBO(251, 128, 110, 1),
                    size: 18,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  width: 342,
                  height: 70,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/Images/122.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HelpCentre()));
                            },
                            child: const Text(
                              "Help Centre ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Stack(children: [
                  Container(
                    width: 342,
                    height: 225,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "Info",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "assets/Images/1(2).png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Privacy Policy",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "assets/Images/2(2).png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Terms & condition",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "assets/Images/3.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Schedule of Charges",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  width: 342,
                  height: 70,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/Images/4a.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DeviceManagementScreen()));
                            },
                            child: const Text(
                              "Manage Devices",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 100),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 19,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  width: 342,
                  height: 70,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/Images/5.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(30.0), // Increased the rounding
                                  ),
                                ),
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          "😕",
                                          style: TextStyle(fontSize: 40),
                                        ),
                                        const SizedBox(height: 16),
                                        const Text(
                                          "Uh, oh!",
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                        Text(
                                          'Your Raast ID "03295132260" is already\n'
                                              'linked with Telenor Microfinance Bank\n'
                                              '(TMB) bank. Please delink it to use it in\n'
                                              'SadaPay.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                        const SizedBox(height: 24),
                                        Container(
                                          height: 60, // Set the desired height for the button
                                          width: 290, // Makes the button take full width
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: const Color.fromRGBO(251, 128, 110, 1),
                                              foregroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(8.0),
                                              ),
                                              elevation: 0,
                                            ),
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(right: 160),
                                                  child: Text(
                                                    'Close',
                                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(width: 20),
                                                Icon(Icons.close, size: 20),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },

                            child: const Text(
                              "Raast ID management",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 60),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 19,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  width: 342,
                  height: 70,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/Images/Logout.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Splashscreen()));
                            },
                            child: const Text(
                              "Log Out",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 150),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 19,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Center(
                child: Text(
                  "Developed for 🇵🇰 with ❤️ by 🌎",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("App versiion : 0.1.10778"),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Call us at",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "  0800-1-SADA",
                    style: TextStyle(
                        color: Color.fromRGBO(251, 128, 110, 1), fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        ));
  }
}
