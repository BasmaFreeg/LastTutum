import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:tutumapp/MyNavBar.dart';
import 'package:tutumapp/PatHome.dart';
import 'package:tutumapp/PatHomeSh.dart';
import 'package:tutumapp/updates.dart';
import 'package:tutumapp/reports.dart';
import 'package:tutumapp/PatHome.dart';
import 'package:tutumapp/docList.dart';
import 'pre.dart';
import 'package:tutumapp/user_dialog.dart';
import 'package:tutumapp/AddUserDialog.dart';

void main() {
  runApp(MaterialApp(home: MPHMain()));
}

class MPHMain extends StatefulWidget {
  const MPHMain({Key? key}) : super(key: key);

  @override
  State<MPHMain> createState() => _MPHMainState();
}

class _MPHMainState extends State<MPHMain> {
  int pageIndex = 0;
  final PatHomeSh _listhome = PatHomeSh();
  final updates _listupdates = new updates();
  final Reports _listReports = new Reports();
  final docList _listdocList = new docList();
  final pre _listpre = new pre();

  Widget _showPage = new PatHomeSh();
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _listhome;
        break;
      case 1:
        return _listupdates;
        break;
      case 2:
        return _listReports;
        break;
      case 3:
        return _listdocList;
        break;
      // case 4:
      //   return _listpre;
      //   break;
      default:
        return _listpre;
      // return new Container(
      //   child: new Center(
      //     child: new Text('no page found'),
      //   ),
      // );
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
              Icons.notifications,
              size: 30.0,
              color: Colors.black,
            ),
            Icon(
              Icons.favorite,
              size: 30.0,
              color: Colors.black,
            ),
            Icon(
              Icons.person,
              size: 30.0,
              color: Colors.black,
            ),
            Icon(
              Icons.note_alt_outlined,
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
