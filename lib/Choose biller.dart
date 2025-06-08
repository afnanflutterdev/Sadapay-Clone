import 'package:flutter/material.dart';

class Choosebiller extends StatefulWidget {
  const Choosebiller({super.key});

  @override
  State<Choosebiller> createState() => _ChoosebillerState();
}

class _ChoosebillerState extends State<Choosebiller> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Choose biller",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 45,
                width: 342,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 3),
                      child: GestureDetector(
                        onTap: (){
                          print('Search query: ${_searchController.text}');
                        },
                        child: Icon(
                          Icons.search_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TextField(
                          controller: _searchController,
                          cursorColor: Colors.deepOrangeAccent,
                          decoration: InputDecoration(
                            hintText: '',

                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Image.asset(
                        "assets/Images/X.png", // Replace with your image path
                        width: 28,
                        height: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/images3.png", // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text("24 HOURS.PK Pvt Ltd",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16
                ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/images (1).jpeg", // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text("24 Days Challenge",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/images (2).jpeg", // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text("5iCreations",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/aa_joyland_logo.jpeg", // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text("AA Joyland Pvt Ltd.",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/images4.png", // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text("AA Logics",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/Allied Bank.png", // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text("ABL Aggregator (SBCA)",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/ablfunds_logo.jpeg", // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text("ABL Asset MAnagement Company",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/AEO.png", // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text("AEO Pakistan",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/AEO.png", // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text("AEO Pakistan (Islamabad)",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/AEO.png", // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text("AEO Pakistan (KPK)",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/AEO.png", // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text("AEO Pakistan (Punjab)",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/AEO.png", // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text("AEO Pakistan (Sindh)",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Images/AEO.png", // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text("AEO Pakistan Education",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
              ],
            ),
            SizedBox(height: 20,)

          ],
        ),
      ),
    );
  }
}
