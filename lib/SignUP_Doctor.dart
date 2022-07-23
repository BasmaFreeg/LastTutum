import 'package:flutter/material.dart';
import 'package:tutumapp/LogAs.dart';
import 'package:tutumapp/SignAs.dart';
import 'package:tutumapp/SignUP_Doctor2.dart';

class SignUP_Doctor extends StatefulWidget {
  @override
  State<SignUP_Doctor> createState() => _SignUP_DoctorState();
}

class _SignUP_DoctorState extends State<SignUP_Doctor> {
  bool isMale = true;
  late String Gender;
  @override
  Widget build(BuildContext context) {
    var primaryColor = const Color.fromARGB(255, 228, 42, 76);
    Color colorr = Colors.grey;
    var primaryColor2 = const Color(0xFFEDEDED);
    var nameController = TextEditingController();
    var ageController = TextEditingController();
    var numController = TextEditingController();
    var addressController = TextEditingController();
    var SpecializationController = TextEditingController();

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
                      text: ' Doctor',
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
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignAS()));
          },
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
                      keyboardType: TextInputType.number,
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
                        filled: false,
                        // contentPadding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                            Gender = 'Male';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isMale ? Colors.pink : Colors.black12,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 45,
                          padding: const EdgeInsets.all(6),
                          child: Row(
                            children: [
                              Icon(
                                Icons.male,
                                size: 32,
                                color: isMale ? Colors.white : Colors.black45,
                              ),
                              Text(
                                "  Male  ",
                                style: TextStyle(
                                  color: isMale ? Colors.white : Colors.black45,
                                ),
                              ),
                            ],
                          ),
                          // backgroundColor: Colors.black12,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                            Gender = 'Female';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: !isMale ? Colors.pink : Colors.black12,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 45,
                          padding: const EdgeInsets.all(6),
                          child: Row(
                            children: [
                              Icon(
                                Icons.female,
                                size: 32,
                                color: !isMale ? Colors.white : Colors.black45,
                              ),
                              Text(
                                "Female  ",
                                style: TextStyle(
                                  color:
                                      !isMale ? Colors.white : Colors.black45,
                                ),
                              ),
                            ],
                          ),
                          // backgroundColor: Colors.black12,
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
                children: const [
                  Icon(
                    Icons.contact_page_rounded,
                    color: Colors.black54,
                    size: 25,
                  ),
                  Text(
                    ' Specialization ',
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
                controller: SpecializationController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Tap, Enter your specialty',
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
                children: const [
                  Icon(
                    Icons.location_pin,
                    color: Colors.black54,
                    size: 25,
                  ),
                  Text(
                    ' Clinic address ',
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
                controller: addressController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Tap, Enter Clinic address',
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
                            builder: (context) => SignUP_Doctor2()));
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

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'A+';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black, fontSize: 16),
      underline: Container(
        height: 2,
        color: const Color.fromARGB(255, 228, 42, 76),
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
    );
  }
}
