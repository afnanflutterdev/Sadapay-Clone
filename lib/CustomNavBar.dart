import 'package:flutter/material.dart';
import 'package:sadapay/HomeScreen.dart';
import 'package:sadapay/More.dart';
import 'package:sadapay/Payement.dart';

class Customnavbar extends StatefulWidget {
  const Customnavbar({super.key});

  @override
  State<Customnavbar> createState() => _CustomnavbarState();
}

class _CustomnavbarState extends State<Customnavbar> {
  int _selectedIndex = 0; // Declare Selectedindex within the class

  final List<Widget> _pages = <Widget>[const Homescreen(), const Payement(),const More()];

  void _onItemTapped(int index) {
    if(index == 1){
      showModalBottomSheet(context: context,
          backgroundColor: Colors.white,
          isScrollControlled: true,
          builder: (context){
        return Container(
          width: 400,
          height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text("Payements",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),),
              ),
              ListTile(
                leading: Image.asset("assets/Images/4a.png",width: 50,height: 50,),
                title: Text("Mobile top up",style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                subtitle: Text("Instantly top up your mobile."),
              ),
              Divider(color: Colors.black12,
              indent: 20,endIndent: 20,),

              ListTile(
                leading: Image.asset("assets/Images/4a.png",width: 50,height: 50,),
                title: Text("Bills & utilities",style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                subtitle: Text("Pay for your utilities."),
              ),
              Divider(color: Colors.black12,
                indent: 20,endIndent: 20,),
              ListTile(
                leading: Image.asset("assets/Images/4a.png",width: 50,height: 50,),
                title: Text("Money requests",style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                subtitle: Text("Review pending money requests."),
              ),
             SizedBox(height: 20,),
            ],
          ),
        );
      });
    }
    setState(() {
      // Update the state within setState
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Personal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_sharp),
            label: 'Payements',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
              "assets/Images/X.png",
            )),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
