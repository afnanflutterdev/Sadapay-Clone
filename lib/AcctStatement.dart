import 'package:flutter/material.dart';
import 'package:sadapay/More.dart';

class Acctstatement extends StatefulWidget {
  const Acctstatement({super.key});

  @override
  State<Acctstatement> createState() => _AcctstatementState();
}

class _AcctstatementState extends State<Acctstatement> {
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();

  @override
  void dispose() {
    _startDateController.dispose();
    _endDateController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (selectedDate != null) {
      setState(() {
        controller.text =
        "${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.day.toString().padLeft(2, '0')}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>More()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    "Account Statement",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Container(
                    width: 342,
                    height: 190,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(13),
                      ),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Column(
                      children: [
                        // Start Date
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 25, top: 15, bottom: 5),
                              child: Text(
                                "Start date",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 280,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(43),
                            ),
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                  child: TextField(
                                    controller: _startDateController,
                                    readOnly: true,
                                    decoration: const InputDecoration(
                                      hintText: "",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => _selectDate(context, _startDateController),
                                child: const Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: Icon(Icons.arrow_drop_down_outlined, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        // End Date
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 25, top: 15, bottom: 5),
                              child: Text(
                                "End date",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 280,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(43),
                            ),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                  child: TextField(
                                    controller: _endDateController,
                                    readOnly: true,
                                    decoration: const InputDecoration(
                                      hintText: "",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => _selectDate(context, _endDateController),
                                child: const Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: Icon(Icons.arrow_drop_down_outlined, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 320),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(251, 128, 110, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                  ),
                  onPressed: () {
                    // Handle button action
                  },
                  child: const Center(
                    child: Text(
                      "Download",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
