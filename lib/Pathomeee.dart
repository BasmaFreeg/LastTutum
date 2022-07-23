import 'package:flutter/material.dart';
import "package:tutumapp/NavBar.dart";

void main() {
  runApp(MaterialApp(home: PatHome()));
}

class PatHome extends StatefulWidget {
  @override
  State<PatHome> createState() => _PatHomeState();
}

class _PatHomeState extends State<PatHome> {
  var primaryColor = const Color.fromARGB(255, 228, 42, 76);
  var primaryColor2 = const Color(0xFFFFDBDB);
  var primaryColor3 = const Color(0xFFEDE8E8);
  final now = DateTime.now();
  final berlinWallFell = DateTime.utc(1989, 11, 9);
  final moonLanding = DateTime.parse('1969-07-20 20:18:04Z');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        backgroundColor: primaryColor,
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0.0,
          automaticallyImplyLeading: true,
          backgroundColor: primaryColor,
          title: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 18.0,
                        //backgroundImage: AssetImage('images/woman-2.png'),
                        backgroundColor: Colors.white,
                        child: Image.asset('images/man.png'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Welcome, ",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
                const Text("Ahmed",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'images/pluss.png',
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              // Time
              height: 60,

              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 105, vertical: 12),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sunday,',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' 13 Dec',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              // mid box
              child: Container(
                decoration: BoxDecoration(
                    color: primaryColor2,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.wb_sunny_rounded,
                                      color: Colors.yellowAccent,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      'Morning',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 200,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '9:45 AM',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.red[900],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          //this grey cotainer
                                          width: 153,
                                          height: 48.0,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                const Image(
                                                  image: AssetImage(
                                                      'images/pill.png'),
                                                  height: 30,
                                                  width: 30,
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 2,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Text(
                                                      'Med A',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.pink,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Take 1',
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                const Image(
                                                  image: AssetImage(
                                                      'images/checked.png'),
                                                  height: 22,
                                                  width: 22,
                                                ),
                                              ],
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                        ), // Grey container 1 ####
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '11:30 AM',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.red[900],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          //this grey cotainer
                                          width: 153,
                                          height: 48.0,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                const Image(
                                                  image: AssetImage(
                                                      'images/pill.png'),
                                                  height: 30,
                                                  width: 30,
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 2,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Text(
                                                      'Med A',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.pink,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Take 1',
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                const Image(
                                                  image: AssetImage(
                                                      'images/checked.png'),
                                                  height: 22,
                                                  width: 22,
                                                ),
                                              ],
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                        ), // Grey container 2 ####
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22.0),
                                    color: Colors.white,
                                  ), //decoration: BoxD
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.0),
                            color: primaryColor,
                          ), //decoration: BoxDecoration,
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'images/half-moon.png',
                                      width: 21,
                                      height: 21,
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    const Text(
                                      'Evening',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 200,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '5:10 PM',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.red[900],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          //this grey cotainer
                                          width: 153,
                                          height: 48.0,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                const Image(
                                                  image: AssetImage(
                                                      'images/pill.png'),
                                                  height: 30,
                                                  width: 30,
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 2,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Text(
                                                      'Med A',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.pink,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Take 1',
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                const Image(
                                                  image: AssetImage(
                                                      'images/checked.png'),
                                                  height: 22,
                                                  width: 22,
                                                ),
                                              ],
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                        ), // Grey container 1 ####
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '7:30 PM',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.red[900],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          //this grey cotainer
                                          width: 153,
                                          height: 48.0,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                const Image(
                                                  image: AssetImage(
                                                      'images/pill.png'),
                                                  height: 30,
                                                  width: 30,
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 2,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Text(
                                                      'Med A',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.pink,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Take 1',
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                const Image(
                                                  image: AssetImage(
                                                      'images/checked.png'),
                                                  height: 22,
                                                  width: 22,
                                                ),
                                              ],
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                        ), // Grey container 2 ####
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22.0),
                                    color: Colors.white,
                                  ), //decoration: BoxD
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.0),
                            color: primaryColor,
                          ), //decoration: BoxDecoration,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ), //pills containers ###
            Expanded(
              // reports
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColor2,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SizedBox(
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
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            'Heart Rate',
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.red[900],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      const Text(
                                        '98 bpm',
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 28,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'images/chart-down.png',
                                            width: 17,
                                            height: 17,
                                          ),
                                          const SizedBox(
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
                      const SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: SizedBox(
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
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            'Blood Oxygen',
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.red[900],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      const Text(
                                        '96%',
                                        style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 26,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Latest: ',
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.red[900],
                                            ),
                                          ),
                                          const SizedBox(
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
                ),
              ),
            ),
          ],
        ));
  }
}
