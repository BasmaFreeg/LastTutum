import 'package:flutter/material.dart';
import 'package:tutumapp/MyNavBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:tutumapp/med2.dart';
import 'package:tutumapp/profile.dart';

void main() {
  runApp(mpathome());
}

class mpathome extends StatefulWidget {
  @override
  State<mpathome> createState() => _mpathomeState();
}

class _mpathomeState extends State<mpathome> {
  var primaryColor = Color.fromARGB(255, 228, 42, 76);
  var primaryColor2 = Color(0xFFFFDBDB);
  var primaryColor3 = Color(0xFFEDE8E8);
  final now = DateTime.now();
  final berlinWallFell = DateTime.utc(1989, 11, 9);
  final moonLanding = DateTime.parse('1969-07-20 20:18:04Z');
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0.0,
          automaticallyImplyLeading: true,
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'images/menu copy.png',
              width: 22,
              height: 22,
            ),
          ),
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
                SizedBox(
                  width: 10,
                ),
                Text("Welcome, ",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
                Text("Ahmed",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 10),
          //     child: PopupMenuButton(
          //       // onSelected: (result) {
          //       //   if (result == 1) {
          //       //     Navigator.of(context)
          //       //         .push(MaterialPageRoute(builder: (context) => med2()));
          //       //   }
          //       // },
          //       child: Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          //         child: Icon(Icons.add),
          //       ),
          //       itemBuilder: (context) => [
          //         PopupMenuItem(
          //             child: Text("Add Monitor"),
          //             value: 1,
          //             onTap: () => Future(
          //                   () => Navigator.of(context).push(
          //                     MaterialPageRoute(builder: (_) => med2()),
          //                   ),
          //                 )
          //             // onTap: () => Navigator.of(context)
          //             //     .push(MaterialPageRoute(builder: (context) => med2())),
          //             ),
          //         PopupMenuItem(
          //             child: Text("Add Medicine"),
          //             value: 2,
          //             onTap: () => Future(
          //                   () => Navigator.of(context).push(
          //                     MaterialPageRoute(builder: (_) => med2()),
          //                   ),
          //                 )
          //             // onTap: () => Navigator.of(context)
          //             //     .push(MaterialPageRoute(builder: (context) => med2())),
          //             ),
          //         PopupMenuItem(
          //             child: Text("Add Diary"),
          //             value: 3,
          //             onTap: () => Future(
          //                   () => Navigator.of(context).push(
          //                     MaterialPageRoute(builder: (_) => med2()),
          //                   ),
          //                 )
          //             // onTap: () => Navigator.of(context)
          //             //     .push(MaterialPageRoute(builder: (context) => med2())),
          //             )
          //       ],

          //       // onPressed:
          //       //   () {
          //       //     Navigator.push(context,
          //       //         MaterialPageRoute(builder: (context) => med2()));
          //       //
          //     ),
          //   )
          // ],
        ),
        body: Column(
          children: [
            Container(
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
              // mid box
              child: Container(
                decoration: BoxDecoration(
                    color: primaryColor2,
                    borderRadius: BorderRadius.only(
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
                                  children: [
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
                                        SizedBox(
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
                                                Image(
                                                  image: AssetImage(
                                                      'images/pill.png'),
                                                  height: 30,
                                                  width: 30,
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 2,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
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
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Image(
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
                                        SizedBox(
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
                                        SizedBox(
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
                                                Image(
                                                  image: AssetImage(
                                                      'images/pill.png'),
                                                  height: 30,
                                                  width: 30,
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 2,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
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
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Image(
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
                                        SizedBox(
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
                      SizedBox(
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
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
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
                                        SizedBox(
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
                                                Image(
                                                  image: AssetImage(
                                                      'images/pill.png'),
                                                  height: 30,
                                                  width: 30,
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 2,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
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
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Image(
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
                                        SizedBox(
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
                                        SizedBox(
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
                                                Image(
                                                  image: AssetImage(
                                                      'images/pill.png'),
                                                  height: 30,
                                                  width: 30,
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 2,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
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
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Image(
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
                                        SizedBox(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
