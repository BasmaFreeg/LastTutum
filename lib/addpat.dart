import 'package:flutter/material.dart';
import 'package:tutumapp/PatList.dart';
import 'package:tutumapp/PatLmain.dart';

void main() {
  runApp(MaterialApp(home: profile()));
}

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  var primaryColor = Color.fromARGB(255, 228, 42, 76);
  var primaryColor2 = Color(0xFFEDEDED);
  var primaryColor3 = Color(0xFFFFDBDB);
  var primaryColor4 = Color(0xFFEDE8E8);
  var addController = TextEditingController();
  var oxController = TextEditingController();
  var ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDBDB),
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor.withOpacity(0.0),
        title: Center(
          child: RichText(
            text: TextSpan(
              text: 'add patient',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 15),
              child: Container(
                height: 600,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Column(children: [
                    SizedBox(
                      height: 15,
                    ),
                    CircleAvatar(
                      radius: 65,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("images/man.png"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                        text: TextSpan(
                      text: 'Dr.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 228, 42, 76),
                        fontFamily: 'Montserrat',
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Ahmed',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 228, 42, 76),
                              fontFamily: 'Montserrat',
                            )),
                      ],
                    )),
                    TextField(
                      cursorColor: primaryColor,
                      controller: addController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'pat code',
                        hintStyle: TextStyle(fontSize: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            // color: Color.fromARGB(255, 228, 42, 76),
                            width: 0.0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        contentPadding: EdgeInsets.all(16),
                        isDense: true,
                      ),
                    ),
                    SizedBox(
                      height: 300,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 95, left: 95),
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
                            // Navigator.push(
                            //     context,
                            // MaterialPageRoute(
                            //     builder: (context) => SignUP_Doctor2()));
                          },
                          child: const Text(
                            'Add',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
