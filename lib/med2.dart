import 'package:flutter/material.dart';
import 'package:tutumapp/dddd.dart';

void main() {
  runApp(MaterialApp(home: med2()));
}

class med2 extends StatelessWidget {
  const med2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var primaryColor = Color.fromARGB(255, 228, 42, 76);
    var primaryColor2 = Color(0xFFEDEDED);
    var primaryColor3 = Color(0xFFFFDBDB);
    var primaryColor4 = Color(0xFFEDE8E8);

    return Scaffold(
      backgroundColor: Color(0xFFFFDBDB),
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        automaticallyImplyLeading: true,
        backgroundColor: primaryColor.withOpacity(0.0),
        title: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 25.0,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 25.0, right: 40),
                child: Center(
                  child: new Image.asset(
                    'images/man.png',
                    width: 40.0,
                    height: 40.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 25.0, right: 30),
                child: RichText(
                  text: TextSpan(
                    text: 'Medicine',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0),
        child: Container(
          height: 530,
          width: 420,
          decoration: BoxDecoration(
            color: Color(0xFFEDE8E8),
            borderRadius: new BorderRadius.all(
              const Radius.circular(30.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, bottom: 30),
                      child: new Image.asset(
                        'images/checked.png',
                        width: 15.0,
                        height: 15.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        bottom: 30,
                      ),
                      child: RichText(
                        text: TextSpan(
                          text: 'You are monitoring of ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'Dr.Ahmed',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 15,
                      ),
                      child: Container(
                        height: 105,
                        width: 160,
                        color: Colors.white,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 7, top: 10),
                            child: IntrinsicHeight(
                              child: Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 50),
                                    child: Container(
                                      child: new Image.asset(
                                        'images/pill.png',
                                        width: 20.0,
                                        height: 20.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 25, top: 0, left: 5),
                                    child: Container(
                                      height: 70,
                                      child: VerticalDivider(
                                        color: Colors.grey,
                                        thickness: 1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 30, left: 25),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Med A 300g',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 228, 42, 76),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'DancingScript',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: '9.00',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Color.fromARGB(
                                                    255, 228, 42, 76),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'DancingScript',
                                              ),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                  text: ' - ',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color.fromARGB(
                                                        255, 228, 42, 76),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'DancingScript',
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '4.30',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color.fromARGB(
                                                        255, 228, 42, 76),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'DancingScript',
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'pm',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color.fromARGB(
                                                        255, 228, 42, 76),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'DancingScript',
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          'Take 1',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'DancingScript',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(
                          //     left: 50,
                          //     bottom: 70,
                          //   ),
                          //   child:
                          // ),
                        ]),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        height: 105,
                        width: 160,
                        color: Colors.white,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 7, top: 10),
                            child: IntrinsicHeight(
                              child: Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 50),
                                    child: Container(
                                      child: new Image.asset(
                                        'images/pill.png',
                                        width: 20.0,
                                        height: 20.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 25, top: 0, left: 5),
                                    child: Container(
                                      height: 70,
                                      child: VerticalDivider(
                                        color: Colors.grey,
                                        thickness: 1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 30, left: 25),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Med C',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 228, 42, 76),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'DancingScript',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: '9.00',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Color.fromARGB(
                                                    255, 228, 42, 76),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'DancingScript',
                                              ),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                  text: ' - ',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color.fromARGB(
                                                        255, 228, 42, 76),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'DancingScript',
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '4.30',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color.fromARGB(
                                                        255, 228, 42, 76),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'DancingScript',
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'pm',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color.fromARGB(
                                                        255, 228, 42, 76),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'DancingScript',
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          'Take 1',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'DancingScript',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 197,
                      ),
                      child: Container(
                        height: 105,
                        width: 160,
                        color: Colors.white,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 7, top: 10),
                            child: IntrinsicHeight(
                              child: Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 50),
                                    child: Container(
                                      child: new Image.asset(
                                        'images/pill.png',
                                        width: 20.0,
                                        height: 20.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 25, top: 0, left: 5),
                                    child: Container(
                                      height: 70,
                                      child: VerticalDivider(
                                        color: Colors.grey,
                                        thickness: 1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 30, left: 25),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Med B',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 228, 42, 76),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'DancingScript',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: '9.00',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Color.fromARGB(
                                                    255, 228, 42, 76),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'DancingScript',
                                              ),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                  text: ' - ',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color.fromARGB(
                                                        255, 228, 42, 76),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'DancingScript',
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '4.30',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color.fromARGB(
                                                        255, 228, 42, 76),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'DancingScript',
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'pm',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color.fromARGB(
                                                        255, 228, 42, 76),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'DancingScript',
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          'Take 1',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'DancingScript',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color.fromARGB(255, 228, 42, 76),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
        ),
      ),
    );
  }
}
