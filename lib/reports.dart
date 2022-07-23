import 'package:flutter/material.dart';
import 'package:tutumapp/VS%20BO.dart';
import 'package:tutumapp/VS%20HR.dart';
import 'package:tutumapp/VS%20T.dart';

void main() {
  runApp(MaterialApp(home: Reports()));
}

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  var primaryColor = Color.fromARGB(255, 228, 42, 76);
  var primaryColor2 = Color(0xFFEDEDED);
  var primaryColor3 = Color(0xFFFFDBDB);
  var primaryColor4 = Color(0xFFEDE8E8);

  var oxController = TextEditingController();
  var ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
        // debugShowCheckedModeBanner: false,
        Scaffold(
      backgroundColor: Color(0xFFFFDBDB),
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor.withOpacity(0.0),
        title: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 25.0, right: 30),
                child: Center(
                  child: new Image.asset(
                    'images/man.png',
                    width: 40.0,
                    height: 40.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 25.0, right: 0),
                child: RichText(
                  text: TextSpan(
                    text: 'Reportes',
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
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(30.0),
              topRight: const Radius.circular(30.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'Your measurements and the health of your body',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'DancingScript',
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 167,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'images/heart.png',
                                        width: 30,
                                        height: 30,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      // Text(
                                      //   'Heart Rate',
                                      //   style: TextStyle(
                                      //     fontSize: 17.0,
                                      //     fontWeight: FontWeight.w400,
                                      //     color: Colors.red[900],
                                      //   ),
                                      // ),
                                      new InkWell(
                                          child: new Text(
                                            'Heart Rate',
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.red[900],
                                            ),
                                          ),
                                          onTap: () => Future(
                                                () =>
                                                    Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (_) => Vs_HR()),
                                                ),
                                              )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    '98 bpm',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 28,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'images/chart-down.png',
                                        width: 17,
                                        height: 17,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '5% less than',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.red[900],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          color: Colors.white,
                        ), //decoration: BoxDecoration,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 167,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'images/oxygen.png',
                                        width: 30,
                                        height: 30,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      new InkWell(
                                          child: new Text(
                                            'Blood Oxygen',
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.red[900],
                                            ),
                                          ),
                                          onTap: () => Future(
                                                () =>
                                                    Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (_) => VSBO()),
                                                ),
                                              )),
                                      // Text(
                                      //   'Blood Oxygen',
                                      //   style: TextStyle(
                                      //     fontSize: 17.0,
                                      //     fontWeight: FontWeight.w400,
                                      //     color: Colors.red[900],
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    '96%',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 26,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Latest: ',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.red[900],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '10:31 AM',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.red[900],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          color: Colors.white,
                        ), //decoration: BoxDecoration,
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
                    child: Container(
                      height: 167,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'images/thermometer.png',
                                        width: 30,
                                        height: 30,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      new InkWell(
                                          child: new Text(
                                            'Temperature',
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.red[900],
                                            ),
                                          ),
                                          onTap: () => Future(
                                                () =>
                                                    Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (_) => VST()),
                                                ),
                                              )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    '37 °C',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 28,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Latest: ',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.red[900],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '10:31 AM',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.red[900],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          color: Colors.white,
                        ), //decoration: BoxDecoration,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 167,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'images/blood-pressure.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'Blood pressure',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.red[900],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    '131/86',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 26,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Latest: ',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.red[900],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '10:31 AM',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.red[900],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          color: Colors.white,
                        ), //decoration: BoxDecoration,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              RichText(
                text: TextSpan(
                  text: ' Make sure to ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'wear the watch ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 228, 42, 76),
                          fontFamily: 'Montserrat',
                        )),
                  ],
                ),
              ),
              Text(
                'before taking the measurement',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'DancingScript',
                ),
              ),
            ]),
          ),
        ),
      ),

      //     BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
      //   BottomNavigationBarItem(
      //     icon: Icon(
      //       Icons.home,
      //       color: Color.fromARGB(255, 228, 42, 76),
      //     ),
      //     label: 'Home',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(
      //       Icons.notifications,
      //       color: Color.fromARGB(255, 228, 42, 76),
      //     ),
      //     label: 'Updates',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(
      //       Icons.favorite,
      //       color: Color.fromARGB(255, 228, 42, 76),
      //     ),
      //     label: 'diary',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(
      //       Icons.person,
      //       color: Color.fromARGB(255, 228, 42, 76),
      //     ),
      //     label: 'Doctors',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(
      //       Icons.note_alt_rounded,
      //       color: Color.fromARGB(255, 228, 42, 76),
      //     ),
      //     label: 'diary',
      //   ),
      // ]),
    );
  }
}
