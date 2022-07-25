import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Patprofile()));
}

class Patprofile extends StatelessWidget {
  var primaryColor = const Color(0xFFE42A4C);
  var primaryColor2 = const Color(0xFFEDEDED);
  var primaryColor3 = const Color(0xFFE24E59);
  var primaryColor4 = const Color(0xFFD2EFFA);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primaryColor.withOpacity(0.0),
        title: Center(
          child: const Text(
            'Profile',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
                // color: Colors.red,
                ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 62,
                    child: CircleAvatar(
                      radius: 58,
                      child: ClipOval(
                        child: Image.asset(
                          'images/male-doctor copy.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Ahmed Adel",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // const Text(
                //   "Heart Specialist",
                //   style: TextStyle(
                //     fontSize: 14,
                //     color: Colors.black45,
                //     fontWeight: FontWeight.w400,
                //   ),
                // ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primaryColor,
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                              Text(
                                " Voice call",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor,
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.chat_bubble,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "  Massage",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 400,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.asset(
                            'images/user-icon-12-24.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200, left: 10),
                        child: Text(
                          'Name',
                          style: TextStyle(
                            color: Color.fromARGB(255, 131, 130, 130),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 210),
                    child: Text(
                      'Ahmed Adel',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        child: ClipOval(
                          child: Image.asset(
                            'images/calendar.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200, left: 10),
                        child: Text(
                          'Date Of Birth',
                          style: TextStyle(
                            color: Color.fromARGB(255, 131, 130, 130),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 205),
                    child: Text(
                      '1962/05/15',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        child: ClipOval(
                          child: Image.asset(
                            'images/height.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Height',
                          style: TextStyle(
                            color: Color.fromARGB(255, 131, 130, 130),
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                          radius: 12,
                          child: ClipOval(
                            child: Image.asset(
                              'images/weighing-machine.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Weight',
                          style: TextStyle(
                            color: Color.fromARGB(255, 131, 130, 130),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text(
                          '160',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Text(
                          '85',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
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
                      CircleAvatar(
                        radius: 12,
                        child: ClipOval(
                          child: Image.asset(
                            'images/blood-type.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200, left: 10),
                        child: Text(
                          'Blood Type',
                          style: TextStyle(
                            color: Color.fromARGB(255, 131, 130, 130),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280, left: 10),
                    child: Text(
                      'A+',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildSheet() => Container();
void printMess() {
  print(" this");
}
