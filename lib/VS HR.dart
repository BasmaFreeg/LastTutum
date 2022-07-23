import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Vs_HR()));
}

class Vs_HR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var primaryColor = const Color.fromARGB(255, 228, 42, 76);
    var primaryColor2 = const Color(0xFFEDEDED);
    var primaryColor3 = const Color(0xFFFFDBDB);
    var oxController = TextEditingController();
    var ageController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFFFDBDB),
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: true,
        backgroundColor: primaryColor.withOpacity(0.0),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 70, top: 13.0, right: 30),
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    text: 'Heart Rate',
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
            const Padding(
              padding: EdgeInsets.only(left: 40, top: 13.0, right: 0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFFFFDBDB),
                backgroundImage: AssetImage("images/man.png"),
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 37,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 15),
              child: Container(
                height: 350,
                width: 400,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 65,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("images/heart.png"),
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                      RichText(
                          text: const TextSpan(
                        text: '86 bpm',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 228, 42, 76),
                          fontFamily: 'Montserrat',
                        ),
                      )),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 110),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage("images/Capture.PNG"),
                            ),
                            RichText(
                                text: const TextSpan(
                              text: '5% less than',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 228, 42, 76),
                                fontFamily: 'Montserrat',
                              ),
                            )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(90)),
                        ),
                        width: 100,
                        // color: primaryColor2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 228, 42, 76),
                            minimumSize: const Size.fromHeight(30), // NEW
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Measure',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: const [
                                Text(
                                  'Minimum',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 228, 42, 76),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DancingScript',
                                  ),
                                ),
                                Text(
                                  '98 bpm',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 228, 42, 76),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DancingScript',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            width: 5,
                            thickness: 1,
                            indent: 0,
                            endIndent: 0,
                            color: Colors.grey,
                          ),
                          Expanded(
                            child: Column(
                              children: const [
                                Text(
                                  'Maximum',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 228, 42, 76),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DancingScript',
                                  ),
                                ),
                                Text(
                                  '98 bpm',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 228, 42, 76),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DancingScript',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 245),
              child: RichText(
                  text: const TextSpan(
                text: 'Performance History',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 228, 42, 76),
                  fontFamily: 'Montserrat',
                ),
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 15),
              child: Container(
                height: 60,
                width: 400,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage("images/Capture.PNG"),
                      ),
                      RichText(
                          text: const TextSpan(
                        text: '  37 °C',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 228, 42, 76),
                          fontFamily: 'Montserrat',
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 15),
              child: Container(
                height: 60,
                width: 400,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage("images/Capture.PNG"),
                      ),
                      RichText(
                          text: const TextSpan(
                        text: '  37 °C',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 228, 42, 76),
                          fontFamily: 'Montserrat',
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
