import 'package:flutter/material.dart';
import 'package:tutumapp/LoginScreenDr.dart';
import 'package:tutumapp/LoginScreenMonitor.dart';
import 'package:tutumapp/SignAs.dart';
import 'WelcomeScreen.dart';
import 'LoginScreen.dart';

class LogAS extends StatelessWidget {
  var primaryColor = Color.fromARGB(255, 228, 42, 76);
  var primaryColor2 = Color(0xFFFFDBDB);
  var primaryColor3 = Color(0xFFEDE8E8);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  //LogAs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: primaryColor.withOpacity(1),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()));
            },
          ),
        ),
        body: Column(
          children: [
            Container(
              // Time
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'images/TUlogin2.png',
                    width: 110,
                    height: 110,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome To ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Tutum App',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              // mid box
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login as",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Choose one to complete the login"),
                  ],
                ),
              ),
            ), //pills containers ###
            Expanded(
              // reports
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreenDr()));
                            },
                            child: Image.asset(
                              'images/doctor-2.png',
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Image.asset(
                              'images/patient-2.png',
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          LoginScreenMonitor()));
                            },
                            child: Image.asset(
                              'images/boy.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                              child: Container(
                            child: Text(
                              "Doctor",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            alignment: Alignment.center,
                          )),
                          Expanded(
                              child: Container(
                            child: Text(
                              "Patient",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            alignment: Alignment.center,
                          )),
                          Expanded(
                              child: Container(
                            child: Text(
                              "Monitor",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            alignment: Alignment.center,
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              // reports
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'New User ?',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignAS()));
                          },
                          child: Text(
                            'Create account',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 16,
                            ),
                          ))
                    ],
                  )),
            ),
          ],
        ));
  }
}

void printMess() {
  print(" this");
}

void printMess2(value) {
  print(value);
}
