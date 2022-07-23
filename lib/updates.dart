import 'package:flutter/material.dart';

class updates extends StatefulWidget {
  const updates({Key? key}) : super(key: key);

  @override
  State<updates> createState() => _updatesState();
}

class _updatesState extends State<updates> {
  var primaryColor = Color.fromARGB(255, 228, 42, 76);
  var primaryColor2 = Color(0xFFEDEDED);
  var primaryColor3 = Color(0xFFFFDBDB);
  var primaryColor4 = Color(0xFFEDE8E8);

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
                    text: 'Updates',
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
          height: 570,
          width: 420,
          decoration: BoxDecoration(
            color: Color(0xFFEDE8E8),
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(30.0),
              topRight: const Radius.circular(30.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 90,
                width: 370,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 42, 76),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 100, top: 5, right: 30, bottom: 20),
                              child: Center(
                                child: new Image.asset(
                                  'images/man.png',
                                  width: 30.0,
                                  height: 30.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, top: 5, right: 100, bottom: 15),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Doctor, Omar',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Added a new midicine',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 90,
                width: 370,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 42, 76),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 100, top: 5, right: 30, bottom: 20),
                              child: Center(
                                child: new Image.asset(
                                  'images/man.png',
                                  width: 30.0,
                                  height: 30.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, top: 5, right: 100, bottom: 20),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Doctor, Ali',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Added a new midicine',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 90,
                width: 370,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 42, 76),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 100, top: 5, right: 30, bottom: 20),
                              child: Center(
                                child: new Image.asset(
                                  'images/man.png',
                                  width: 30.0,
                                  height: 30.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, top: 5, right: 100, bottom: 20),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Doctor, Omar',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Added a new midicine',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 90,
                width: 370,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 42, 76),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 100, top: 5, right: 30, bottom: 20),
                              child: Center(
                                child: new Image.asset(
                                  'images/man.png',
                                  width: 30.0,
                                  height: 30.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, top: 5, right: 100, bottom: 20),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Doctor, Omar',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Added a new midicine',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 35),
              //   child: Container(
              //     height: 74.4,
              //     width: 415,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
            ]),
          ),
        ),
      ),
//           BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.home,
//             color: Color.fromARGB(255, 228, 42, 76),
//           ),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.notifications,
//             color: Color.fromARGB(255, 228, 42, 76),
//           ),
//           label: 'Updates',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.favorite,
//             color: Color.fromARGB(255, 228, 42, 76),
//           ),
//           label: 'diary',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.person,
//             color: Color.fromARGB(255, 228, 42, 76),
//           ),
//           label: 'Doctors',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.note_alt_rounded,
//             color: Color.fromARGB(255, 228, 42, 76),
//           ),
//           label: 'diary',
//         ),
//       ]),
    );
  }
}
