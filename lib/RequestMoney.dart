import 'package:flutter/material.dart';
import 'package:sadapay/HomeScreen.dart';

class RequestMoney extends StatefulWidget {
  const RequestMoney({super.key});

  @override
  State<RequestMoney> createState() => _RequestMoneyState();
}

class _RequestMoneyState extends State<RequestMoney> {
  String amount = "0"; // State variable to store the current amount

  // Function to handle number taps
  void _onNumberTap(String number) {
    setState(() {
      if (amount == "0") {
        amount = number; // Replace "0" with the tapped number
      } else {
        amount += number; // Append the tapped number to the existing amount
      }
    });
  }

  // Function to handle backspace tap
  void _onBackspaceTap() {
    setState(() {
      if (amount.isNotEmpty && amount != "0") {
        amount = amount.substring(0, amount.length - 1); // Remove the last digit
        if (amount.isEmpty) {
          amount = "0"; // Reset to "0" if all digits are removed
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 122, 102, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(251, 122, 102, 1),
        leading: InkWell(onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
        },child: Icon(Icons.arrow_back_ios, color: Colors.white)),
        title: Column(
          children: [
            Text(
              "Current Balance",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Rs.251",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                "Rs.$amount", // Display the current amount
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 44,
                ),
              ),
            ),
          ),
          SizedBox(height: 60),
          // Number pad
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildNumberButton("1"),
                  _buildNumberButton("2"),
                  _buildNumberButton("3"),
                ],
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildNumberButton("4"),
                  _buildNumberButton("5"),
                  _buildNumberButton("6"),
                ],
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildNumberButton("7"),
                  _buildNumberButton("8"),
                  _buildNumberButton("9"),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildNumberButton("0"),
                  SizedBox(width: 55), // Space between "0" and backspace button
                  GestureDetector(
                    onTap: _onBackspaceTap, // Handle backspace tap
                    child: Padding(
                      padding: const EdgeInsets.only(right: 55),
                      child: Image.asset(
                        "assets/Images/4.png",
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 143,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(185, 91, 77, 1),
                ),
                child: Center(
                  child: Text(
                    "Request",
                    style: TextStyle(
                      color: Color.fromRGBO(214, 159, 150, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Container(
                width: 143,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(185, 91, 77, 1),
                ),
                child: Center(
                  child: Text(
                    "Send",
                    style: TextStyle(
                      color: Color.fromRGBO(214, 159, 150, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to build a number button
  Widget _buildNumberButton(String number) {
    return GestureDetector(
      onTap: () => _onNumberTap(number), // Handle number tap
      child: Container(
        width: 60, // Fixed width for each button
        height: 60, // Fixed height for each button
        alignment: Alignment.center,
        child: Text(
          number,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}