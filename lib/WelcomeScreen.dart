import 'package:flutter/material.dart';
// import 'package:tutumapp/LogAs_Scr.dart';
import 'LogAs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //use MaterialApp() widget like this
        home: WelcomeScreen() //create new widget class for this 'home' to
        // escape 'No MediaQuery widget found' error
        );
  }
}

class WelcomeScreen extends StatelessWidget {
  var primaryColor = Color(0xFFE42A4C);
  var primaryColor2 = Color(0xFFEDEDED);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              child: Image.asset(
                'images/medicineSet.png',
                //width: 22,
                // height: 22,
              ),
            ),
          ),
          Column(
            children: const [
              Text(
                " Be in control of ",
                style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontFamily: 'Montserrat'),
              ),
              Text(
                " Your Health",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'Montserrat'),
              ),
              SizedBox(height: 30),
              Text(
                "An easy to use and reliable app\n"
                "That helps you remember to take\n"
                "Your meds of right time and\n"
                'Monitor your body health.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontFamily: 'Montserrat'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(45.0),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogAS()));
                },
                child: const Text(
                  'Get Started',
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
    );
  }
}
