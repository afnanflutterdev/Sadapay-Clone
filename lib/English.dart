import 'package:flutter/material.dart';

class English extends StatelessWidget {
  const English({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Help",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(251, 128, 110, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Search functionality
            },
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  "English",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
            Row(
              children:[
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
              "99 articles\nBy Faiza and 3 others",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
                SizedBox(width: 94),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/Images/ProfileImage.jpeg"), // Example image
                  radius: 16,
                ),
        
                CircleAvatar(
                  backgroundImage: AssetImage("assets/Images/ProfileImage.jpeg"), // Example image
                  radius: 16,
                ),
        
                CircleAvatar(
                  backgroundImage: AssetImage("assets/Images/ProfileImage.jpeg"), // Example image
                  radius: 16,
                ),
              ],
            ),
            SizedBox(height: 10,),
            Divider(color: Colors.black12,),
            SizedBox(height: 10,),
            Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18),
            child: Text(
              "Learn more about Card Deadline",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Icon(Icons.keyboard_arrow_right),
          ),
        ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "Account 📃",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "Learn more about your Personal SadaPay\naccount😎",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32,bottom: 5),
                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "16 Articles",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 12),
                  ),
        
                ],
              ),
            ),
            Divider(color: Colors.black12,),
            SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "Business Accounts 💵",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "Learn more about our Business Accounts",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32,),
                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "8 Articles",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 12),
                  ),
        
                ],
              ),
            ),
            Divider(color: Colors.black12,),
            SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "Transactions 💸",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: 18,),
              child: Row(
                children: [
                  Text(
                    "Learn more about your transactions💵",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50,),
                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "17 Articles",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 12),
                  ),
        
                ],
              ),
            ),
            Divider(color: Colors.black12,),
            SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "Cards 💳",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 18,),
              child: Row(
                children: [
                  Text(
                    "Learn more about your SadaPay cards 😃",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32,bottom: 13),
                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 18,),
              child: Row(
                children: [
                  Text(
                    "35 Articles",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 12),
                  ),
        
                ],
              ),
            ),   Divider(color: Colors.black12,),
            SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "APP 📱",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "Learn more about the SadaPay app 😎",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "4 Articles",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 12),
                  ),
        
                ],
              ),
            ),   Divider(color: Colors.black12,),
            SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "OTP🔢",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "Learn how to report an OTP issue 🕵️",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "2 Articles",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 12),
                  ),
        
                ],
              ),
            ),   Divider(color: Colors.black12,),
            SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "Founder's Club 🚀",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "Learn everything that you need to know about\nour exclusive Founder's Club🎉",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,fontSize: 13),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20,bottom: 13),
                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "4 Articles",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 12),
                  ),
        
                ],
              ),
            ),   Divider(color: Colors.black12,),
            SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "Documents 📃",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "Learn how to request a document🙌",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "4 Articles",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 12),
                  ),
        
                ],
              ),
            ),   Divider(color: Colors.black12,),
            SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "About SadaPay 🧡",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "Get to know us better 🤗",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:130),
                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "6 Articles",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 12),
                  ),
        
                ],
              ),
            ),
            Divider(color: Colors.black12,),
            SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "Contact Us",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "Learn how to get in touch with us",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "2 Articles",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 12),
                  ),

                ],
              ),
            ),
            Divider(color: Colors.black12,),
            SizedBox(height: 40,)
            
            
            
            
            
        
        ]),
      ),

    );
  }
}