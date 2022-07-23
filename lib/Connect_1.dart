import 'package:flutter/material.dart';
import 'package:tutumapp/PatHome.dart';
import 'package:tutumapp/PatHome.dart';
import 'package:tutumapp/diseases.dart';
import 'package:tutumapp/mainH.dart';
import 'LoginScreen.dart';

class Connect_1 extends StatelessWidget {
  var primaryColor = Color(0xFFE42A4C);
  var primaryColor2 = Color(0xFFEDEDED);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primaryColor.withOpacity(0.0),
        title: Text(
          'Connect your watch',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Image.asset(
                'images/connect.png',
                //width: 22,
                // height: 22,
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    " Wear ",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontFamily: 'Montserrat'),
                  ),
                  Text(
                    "Tutum watch ",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Colors.pink,
                        fontFamily: 'Montserrat'),
                  ),
                ],
              ),
              Text(
                "on your wrist",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontFamily: 'Montserrat'),
              ),
              SizedBox(height: 30),
              Text(
                "and press next",
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
                      MaterialPageRoute(builder: (context) => mainH()));
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
    );
  }
}
