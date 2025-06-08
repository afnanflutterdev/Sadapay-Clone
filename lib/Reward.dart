import 'package:flutter/material.dart';

class Reward extends StatelessWidget {
  const Reward({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/Images/Giftt.jpeg",
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 15),
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Center(child: Text("Total earned",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,color: Colors.white),
                    )),
                  ),
                  Text("Rs.0",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33,color: Colors.white),
                  )
                ],
              )
            ],
          ),
         SizedBox(height: 20,),
         Column(
           children: [
             Text("Invite to earn!",
               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27,),)
           ],
         ),
          SizedBox(height: 10,),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  width: 342,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(13),
                    ),
                    border: Border.all(color: Colors.black12),
                  ),
                  ),
                ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("Invite Freelancers",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40,),
                    child: Text("Get Rs.1000 for\nevery freelancer you\nrefer to SadaBiz",style: TextStyle(
                        color: Colors.grey
                    ),),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
              Row(
                children: [ Padding(
                  padding: const EdgeInsets.only(left: 30,top: 120),
                  child: Text(" 😍 Earn Rs.1000",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.deepOrangeAccent
                  ),),
                ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 120),
                    child: Icon(Icons.arrow_forward,color: Colors.deepOrangeAccent,),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25,top: 15),
                    child: Image.asset("assets/Images/money2.png"),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  width: 342,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(13),
                    ),
                    border: Border.all(color: Colors.black12),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22,top: 10),
                    child: Text("Invite 10 freinds",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40,),
                    child: Text("Get a free Founder's\nclub debit card",style: TextStyle(
                        color: Colors.grey
                    ),),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
              Row(
                children: [ Padding(
                  padding: const EdgeInsets.only(left: 30,top: 120),
                  child: Text(" 😍 Earn Rs.1000",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.deepOrangeAccent
                  ),),
                ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 120),
                    child: Icon(Icons.arrow_forward,color: Colors.deepOrangeAccent,),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25,top: 15),
                    child: Image.asset("assets/Images/money2.png"),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
