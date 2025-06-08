import 'package:flutter/material.dart';

class IncreaseLimit extends StatelessWidget {
  const IncreaseLimit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset("assets/Images/Screenshot_20250118-141659.jpg"),
          ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
                  "Verify your biometric\nto bump up your wallet\nlimit",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20,left: 5),
                    child: Icon(Icons.check,color: Colors.greenAccent,size: 20,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Please make sure your fingers are\n clean and have a clear background.",style: TextStyle(
                      color: Colors.grey
                    ),),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20,left: 5),
                    child: Icon(Icons.check,color: Colors.greenAccent,size: 20,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Place them close together as shown in\nthe illustration above.",style: TextStyle(
                        color: Colors.grey
                    ),),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20,left: 5),
                    child: Icon(Icons.check,color: Colors.greenAccent,size: 20,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Scan your left hand first, then repeat\nthe scan with your right hand.",style: TextStyle(
                        color: Colors.grey
                    ),),
                  ),
                ],
              ),

              SizedBox(height: 80),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(	251, 128, 110,1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                    ),
                    onPressed: () {
                      // Handle button action
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            "Start scanning",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Icon(Icons.arrow_forward,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
        ],
      ),
    );
  }
}
