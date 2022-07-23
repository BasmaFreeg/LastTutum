import 'package:flutter/material.dart';
import 'package:tutumapp/LogAs.dart';
import 'package:tutumapp/SignUP_Monitor2.dart';

class SignUP_Monitor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var primaryColor = const Color.fromARGB(255, 228, 42, 76);
    var primaryColor2 = const Color(0xFFEDEDED);
    var primaryColor3 = const Color(0xFFf5f5f5);
    var nameController = TextEditingController();
    var ageController = TextEditingController();
    var numController = TextEditingController();
    var relaController = TextEditingController();

    int _value = 1;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: true,
        backgroundColor: primaryColor.withOpacity(0.0),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: RichText(
              text: const TextSpan(
                text: 'Sign up - ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: ' Monitor',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 228, 42, 76),
                        fontFamily: 'Montserrat',
                      )),
                ],
              ),
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.person,
                    color: Colors.black54,
                    size: 27,
                  ),
                  Text(
                    ' Enter your name',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'DancingScript',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // color: primaryColor2,
                child: TextField(
                  cursorColor: primaryColor,
                  controller: nameController,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Tap,  & Enter name',
                    hintStyle: const TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        //color: Color.fromARGB(255, 228, 42, 76),
                        width: 0.0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    contentPadding: const EdgeInsets.all(16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15),
              child: Row(
                children: const [
                  Icon(
                    Icons.date_range_rounded,
                    color: Colors.black54,
                    size: 25,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: Text(
                      ' Age',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.man,
                    color: Colors.black54,
                    size: 27,
                  ),
                  Expanded(
                    child: Text(
                      ' Gender',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 95,
                    height: 47,
                    //color: primaryColor2,
                    child: TextField(
                      cursorColor: primaryColor,
                      controller: ageController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: '41',
                        hintStyle: const TextStyle(fontSize: 16),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 228, 42, 76),
                            width: 1.0,
                          ),
                        ),
                        filled: true,
                        // contentPadding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: SizedBox(
                        height: 50,
                        child: ChoiceChip(
                          labelPadding: const EdgeInsets.all(6),
                          labelStyle: const TextStyle(color: Colors.white),
                          avatar: const Icon(
                            Icons.male,
                            size: 32,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.white,
                          selectedColor: primaryColor,
                          label: const Text("Male     "),
                          selected: true,
                          shadowColor: const Color.fromARGB(255, 228, 42, 76),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 228, 42, 76),
                                  style: BorderStyle.none,
                                  width: 1),
                              borderRadius: BorderRadius.circular(10.0)),
                          onSelected: (bool value) {
                            //Do whatever you want when the chip is selected
                          },
                          pressElevation: 10,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: SizedBox(
                        height: 50,
                        child: ChoiceChip(
                          labelPadding: const EdgeInsets.all(6),
                          labelStyle: const TextStyle(color: Colors.black45),
                          avatar: const Icon(
                            Icons.female,
                            size: 32,
                            color: Colors.black45,
                          ),
                          // backgroundColor: Colors.black12,
                          selectedColor: primaryColor,
                          label: const Text("Female  "),
                          selected: false,
                          shadowColor: const Color.fromARGB(255, 228, 42, 76),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 228, 42, 76),
                                  style: BorderStyle.none,
                                  width: 1),
                              borderRadius: BorderRadius.circular(10.0)),
                          onSelected: (bool value) {
                            //Do whatever you want when the chip is selected
                          },
                          pressElevation: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.phone_android,
                    color: Colors.black54,
                    size: 25,
                  ),
                  Text(
                    ' Phone number ',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'DancingScript',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: primaryColor,
                controller: numController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'eg. 01023837647',
                  hintStyle: const TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      // color: Color.fromARGB(255, 228, 42, 76),
                      width: 0.0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(16),
                  isDense: true,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/blood-drop.png',
                    width: 20,
                    height: 20,
                  ),
                  const Text(
                    ' Blood type ',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'DancingScript',
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: MyStatefulWidget2(),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.supervisor_account_rounded,
                    color: Colors.black54,
                    size: 25,
                  ),
                  Text(
                    ' Relationship with patient ',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'DancingScript',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: primaryColor,
                controller: relaController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Tap, Enter relationship',
                  hintStyle: const TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      // color: Color.fromARGB(255, 228, 42, 76),
                      width: 0.0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(16),
                  isDense: true,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                            builder: (context) => SignUP_Monitor2()));
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogAS()));
                    },
                    child: Text(
                      'sign in',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    ))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class MyStatefulWidget2 extends StatefulWidget {
  const MyStatefulWidget2({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget2> createState() => _MyStatefulWidget2State2();
}

class _MyStatefulWidget2State2 extends State<MyStatefulWidget2> {
  String dropdownValue = 'A+';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFf5f5f5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        elevation: 16,
        style: const TextStyle(color: Colors.black54, fontSize: 16),
        underline: Column(
          children: [
            Container(
              height: 0,
              width: double.infinity,
              color: const Color.fromARGB(255, 228, 42, 76),
            ),
          ],
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['A+', 'O+', 'BB+', 'AB+', 'O-', 'B-', 'AB-', 'A-']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
