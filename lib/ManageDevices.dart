import 'package:flutter/material.dart';

class DeviceManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        // title: Text('Device Management'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Text(
                  "Device Management",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text(
                  "YOUR DEVICES",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Image.asset(
              "assets/Images/Android.png",
              width: 50,
              height: 50,
            ),
            title: Text(
              'Infinix X676C',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Current device',
                style: TextStyle(
                    color: Colors.green, fontWeight: FontWeight.w500)),
          ),
          ListTile(
            leading: Image.asset(
              "assets/Images/Android.png",
              width: 50,
              height: 50,
            ),
            title: Text(
              'Infinix X676C',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Logged in on 07 Jan 2025',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(

              onPressed: () {},
              child: Text(
                'Log out from all devices',
                style: TextStyle(
                  color: Color.fromRGBO(251, 128, 110, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(315, 50), // Set minimum width and height
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                backgroundColor: Colors.transparent,
                elevation: 0,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(6),
    side: BorderSide(
                  color: Color.fromRGBO(251, 128, 110, 1), // Outline color
                  width: 2, // Outline thickness

            ),
          ),
    )))],
      ),
    );
  }
}
