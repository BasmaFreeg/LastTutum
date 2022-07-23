import 'package:flutter/material.dart';

void main() {
  runApp(VST());
}

class VST extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var primaryColor = Color.fromARGB(255, 228, 42, 76);
    var primaryColor2 = Color(0xFFEDEDED);
    var primaryColor3 = Color(0xFFFFDBDB);
    var oxController = TextEditingController();
    var ageController = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFDBDB),
        appBar: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: true,
          backgroundColor: primaryColor.withOpacity(0.0),
          title: Center(
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 60, top: 13.0, right: 30),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Tempreature',
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
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 13.0, right: 0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xFFFFDBDB),
                    backgroundImage: AssetImage("images/man.png"),
                  ),
                ),
              ],
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 65,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage("images/temp.png"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RichText(
                            text: TextSpan(
                          text: '37 °C',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 228, 42, 76),
                            fontFamily: 'Montserrat',
                          ),
                        )),
                        const SizedBox(
                          height: 25,
                        ),
                        //        Padding(
                        //        padding: const EdgeInsets.only(left: 130),
                        //      child: Row(
                        //      children: [
                        //      CircleAvatar(
                        //      radius: 15,
                        //    backgroundColor: Colors.white,
                        //  backgroundImage:
                        //    AssetImage("images/Capture.PNG"),
                        // ),
                        // RichText(
                        //  text: TextSpan(
                        //  text: '5% less than',
                        //style: TextStyle(
                        //   fontSize: 15,
                        // fontWeight: FontWeight.w400,
                        //color: Color.fromARGB(255, 228, 42, 76),
                        // fontFamily: 'Montserrat',
                        //  ),
                        //   )),
                        //    ],
                        // ),
                        //  ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(90)),
                          ),
                          width: 100,
                          // color: primaryColor2,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 228, 42, 76),
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
                          height: 20,
                        ),
                        RichText(
                            text: TextSpan(
                          text: 'Latest: 10:31 AM',
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
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 245),
                child: RichText(
                    text: TextSpan(
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage("images/Capture.PNG"),
                        ),
                        RichText(
                            text: TextSpan(
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage("images/Capture.PNG"),
                        ),
                        RichText(
                            text: TextSpan(
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
      ),
    );
  }
}
