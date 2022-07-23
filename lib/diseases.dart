import 'package:flutter/material.dart';
import 'package:tutumapp/Connect_1.dart';

void main() {
  runApp(diseases());
}

class diseases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var primaryColor = Color.fromARGB(255, 228, 42, 76);
    var primaryColor2 = Color(0xFFEDEDED);
    var nameController = TextEditingController();
    var ageController = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: true,
          backgroundColor: primaryColor.withOpacity(0.0),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                height: 30,
                child: Center(
                  child: Text(
                    'Select the diseases you suffer',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ChoiceChip(
                            labelPadding: EdgeInsets.all(7),
                            labelStyle: TextStyle(color: Colors.black),
                            selectedColor: primaryColor,
                            label: Text("   Asthma   "),
                            selected: false,
                            backgroundColor: Colors.white,
                            shadowColor: Color.fromARGB(255, 228, 42, 76),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(10.0)),
                            onSelected: (bool value) {
                              //Do whatever you want when the chip is selected
                            },
                            pressElevation: 20,
                          ),
                        ),
                        Expanded(
                          child: ChoiceChip(
                            labelPadding: EdgeInsets.all(7),
                            labelStyle: TextStyle(color: Colors.black),
                            selectedColor: primaryColor,
                            label: Text("Heart disease"),
                            selected: false,
                            backgroundColor: Colors.white,
                            shadowColor: Color.fromARGB(255, 228, 42, 76),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(10.0)),
                            onSelected: (bool value) {
                              //Do whatever you want when the chip is selected
                            },
                            pressElevation: 20,
                          ),
                        ),
                        Expanded(
                          child: ChoiceChip(
                            labelPadding: EdgeInsets.all(7),
                            labelStyle: TextStyle(color: Colors.black),
                            selectedColor: primaryColor,
                            label: Text("   Cancer   "),
                            selected: false,
                            backgroundColor: Colors.white,
                            shadowColor: Color.fromARGB(255, 228, 42, 76),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(10.0)),
                            onSelected: (bool value) {
                              //Do whatever you want when the chip is selected
                            },
                            pressElevation: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 35, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0, right: 0),
                            child: ChoiceChip(
                              labelPadding: EdgeInsets.all(6),
                              labelStyle: TextStyle(color: Colors.black),
                              selectedColor: primaryColor,
                              label: Text("Blood pressure"),
                              selected: false,
                              backgroundColor: Colors.white,
                              shadowColor: Color.fromARGB(255, 228, 42, 76),
                              shape: RoundedRectangleBorder(
                                  side:
                                      BorderSide(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(10.0)),
                              onSelected: (bool value) {
                                //Do whatever you want when the chip is selected
                              },
                              pressElevation: 20,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, right: 0),
                            child: ChoiceChip(
                              labelPadding: EdgeInsets.all(6),
                              labelStyle: TextStyle(color: Colors.black),
                              selectedColor: primaryColor,
                              label: Text("Cyctic fibrosis"),
                              selected: false,
                              backgroundColor: Colors.white,
                              shadowColor: Color.fromARGB(255, 228, 42, 76),
                              shape: RoundedRectangleBorder(
                                  side:
                                      BorderSide(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(10.0)),
                              onSelected: (bool value) {
                                //Do whatever you want when the chip is selected
                              },
                              pressElevation: 20,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: ChoiceChip(
                              labelPadding: EdgeInsets.all(7),
                              labelStyle: TextStyle(color: Colors.black),
                              selectedColor: primaryColor,
                              label: Text("   Cancer   "),
                              selected: false,
                              backgroundColor: Colors.white,
                              shadowColor: Color.fromARGB(255, 228, 42, 76),
                              shape: RoundedRectangleBorder(
                                  side:
                                      BorderSide(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(10.0)),
                              onSelected: (bool value) {
                                //Do whatever you want when the chip is selected
                              },
                              pressElevation: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 35, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0, right: 0),
                            child: ChoiceChip(
                              labelPadding: EdgeInsets.all(6),
                              labelStyle: TextStyle(color: Colors.black),
                              selectedColor: primaryColor,
                              label: Text("Blood pressure"),
                              selected: false,
                              backgroundColor: Colors.white,
                              shadowColor: Color.fromARGB(255, 228, 42, 76),
                              shape: RoundedRectangleBorder(
                                  side:
                                      BorderSide(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(10.0)),
                              onSelected: (bool value) {
                                //Do whatever you want when the chip is selected
                              },
                              pressElevation: 20,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, right: 0),
                            child: ChoiceChip(
                              labelPadding: EdgeInsets.all(6),
                              labelStyle: TextStyle(color: Colors.black),
                              selectedColor: primaryColor,
                              label: Text("Cyctic fibrosis"),
                              selected: false,
                              backgroundColor: Colors.white,
                              shadowColor: Color.fromARGB(255, 228, 42, 76),
                              shape: RoundedRectangleBorder(
                                  side:
                                      BorderSide(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(10.0)),
                              onSelected: (bool value) {
                                //Do whatever you want when the chip is selected
                              },
                              pressElevation: 20,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: ChoiceChip(
                              labelPadding: EdgeInsets.all(7),
                              labelStyle: TextStyle(color: Colors.black),
                              selectedColor: primaryColor,
                              label: Text("   Cancer   "),
                              selected: false,
                              backgroundColor: Colors.white,
                              shadowColor: Color.fromARGB(255, 228, 42, 76),
                              shape: RoundedRectangleBorder(
                                  side:
                                      BorderSide(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(10.0)),
                              onSelected: (bool value) {
                                //Do whatever you want when the chip is selected
                              },
                              pressElevation: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, right: 35),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 60,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: double.infinity,
                      child: MaterialButton(
                        color: primaryColor,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Connect_1()));
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
