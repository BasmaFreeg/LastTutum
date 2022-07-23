import 'package:flutter/material.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Color.fromARGB(255, 228, 42, 76),
      padding: EdgeInsets.only(top: 5, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/other');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              size: 60.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/other1');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/other2');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.note_alt_outlined,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/other3');
            },
          ),
        ],
      ),
    );
  }
}
