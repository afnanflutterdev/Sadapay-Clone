import 'package:flutter/material.dart';

class Mobiletopup extends StatelessWidget {
  const Mobiletopup({super.key});

  @override
  Widget build(BuildContext context) {
    final MobileController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('MobiletopUp'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SafeArea(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 15),
              child: Text("Mobile number"),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                controller:MobileController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  hintText: "0321-0XXXXXX",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Container(
                  width: 300,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                    ),
                  ),
                  child:Center(
                    child: ListTile(
                      leading:Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black12)
                        ),
                        child: Icon(Icons.cell_tower,color: Colors.deepOrangeAccent,),
                      ),
                      title: Text("Network Operator",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                      ),),
                      trailing: TextButton(onPressed: (){
                        showModalBottomSheet(context: context, builder: (context){
                          return Container(
                            height: 340,
                            width: 360,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                            ),
                         child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 20,left: 20),
                               child: Text("Choose Operator",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                             ),
                             SizedBox(height: 20,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),shape: BoxShape.circle
                                    ),
                                    child: Icon(Icons.cell_tower,color: Colors.deepOrangeAccent,),
                                  ),
                                  
                                ),
                                 SizedBox(width: 20,),
                                 Text("Telenor Prepaid",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                               ],
                             ),
                             SizedBox(height: 15,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 20),
                                   child: Container(
                                     width: 50,
                                     height: 50,
                                     decoration: BoxDecoration(
                                         border: Border.all(color: Colors.black12),shape: BoxShape.circle
                                     ),
                                     child: ClipOval(child: Image.asset("assets/Images/Zong.png")),
                                   ),

                                 ),
                                 SizedBox(width: 20,),
                                 Text("Zong Prepaid",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                               ],
                             ),  SizedBox(height: 15,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 20),
                                   child: Container(
                                     width: 50,
                                     height: 50,
                                     decoration: BoxDecoration(
                                         border: Border.all(color: Colors.black12),shape: BoxShape.circle
                                     ),
                                     child: ClipOval(child: Image.asset("assets/Images/Jazz.png")),
                                   ),

                                 ),
                                 SizedBox(width: 20,),
                                 Text("Jazz Prepaid",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                               ],
                             ),  SizedBox(height: 15,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 20),
                                   child: Container(
                                     width: 50,
                                     height: 50,
                                     decoration: BoxDecoration(
                                         border: Border.all(color: Colors.black12),shape: BoxShape.circle
                                     ),
                                     child: ClipOval(child: Image.asset("assets/Images/ufone.png")),
                                   ),

                                 ),
                                 SizedBox(width: 20,),
                                 Text("Ufone Prepaid",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                               ],
                             ),

                           ],
                         ),
                          );
                        });

                      }, child: Text("Select",style: TextStyle(
                        color: Colors.red
                      ),)),
                    ),
                  ),
                ),
              ),
            )
        
          ],
        ),
      ),
    );
  }
}
