import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:tutumapp/MyNavBar.dart';
import 'package:tutumapp/PatHome.dart';
import 'package:tutumapp/PatList.dart';
import 'package:tutumapp/profile.dart';
import 'package:tutumapp/updates.dart';
import 'package:tutumapp/reports.dart';
import 'package:tutumapp/PatHome.dart';
import 'package:tutumapp/docList.dart';

void main() {
  runApp(MaterialApp(home: PatLmain()));
}

class PatLmain extends StatefulWidget {
  const PatLmain({Key? key}) : super(key: key);

  @override
  State<PatLmain> createState() => _PatLmainState();
}

class _PatLmainState extends State<PatLmain> {
  int pageIndex = 0;
  final PatList _listPatlist = PatList();
  final profile _listprofile = new profile();
  // final Reports _listReports = new Reports();
  // final docList _listdocList = new docList();

  Widget _showPage = new PatList();
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _listPatlist;
        break;
      case 1:
        return _listprofile;
        break;

      default:
        return new Container(
          child: new Center(
            child: new Text('no page found'),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          index: pageIndex,
          height: 60,
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30.0,
              color: Colors.black,
            ),
            Icon(
              Icons.person,
              size: 30.0,
              color: Colors.black,
            ),
          ],
          color: Color.fromARGB(255, 228, 42, 76),
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          }),
      body: _showPage,
    );

    //
  }
}
