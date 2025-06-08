import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(	251, 128, 110,1),
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Help",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search_outlined),
          ),
        ],
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20,top: 20),
            child: Row(
              children: [
                Text(
                  '2 Collections',
                  style: TextStyle(fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Divider(color: Colors.black12,),
          ListTile(
            title: Text(
              'English',
              style: TextStyle(fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            subtitle: Text(
              '99 Articles',
              style: TextStyle(fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(color: Colors.black12,),
          ListTile(
            title: Text(
              'Urdu',
              style: TextStyle(fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            subtitle: Text(
              '99 Articles',
              style: TextStyle(fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(color: Colors.black12,),
        ],
      ),
    );
  }
}
