import 'package:flutter/material.dart';
import 'package:sadapay/HomeScreen.dart';

class Transictionhistory extends StatelessWidget {
  const Transictionhistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Transiction History"),
        centerTitle: true,
        leading: InkWell(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
           },
            child: Icon(Icons.arrow_back_ios,size: 18,)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "13 June",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22,top: 10),
                child: Text("- Rs.100",
                  style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
              ),
            ],
          ),
          ListTile(
            leading: Image.asset(
              "assets/Images/1.png",
              width: 50,
              height: 50,
            ),
            title: Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                "MUHAMMAD AFNAN",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                "8:27 A.M",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 23),
              child: Text(
                "Rs.100",
                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Jan 9",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22,top: 10),
                child: Text("- Rs.130",
                  style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
              ),
            ],
          ),
          ListTile(
            leading: Image.asset(
              "assets/Images/1.png",
              width: 50,
              height: 50,
            ),
            title: Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                "MUHAMMAD AFNAN",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                "9:29 P.M",
                style:
                TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 23),
              child: Text(
                "Rs.130",
                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Jan 7",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22,top: 10),
                child: Text("- Rs.330",
                  style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
              ),
            ],
          ),
          ListTile(
            leading: Image.asset(
              "assets/Images/1.png",
              width: 50,
              height: 50,
            ),
            title: Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                "MUHAMMAD AFNAN",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                "9:44 P.M",
                style:
                TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 23),
              child: Text(
                "Rs.30",
                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),
              ),
            ),
          ),

          ListTile(
            leading: Image.asset(
              "assets/Images/1.png",
              width: 50,
              height: 50,
            ),
            title: Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                "MUHAMMAD AFNAN",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                "9:37 P.M",
                style:
                TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 23),
              child: Text(
                "Rs.300",
                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
