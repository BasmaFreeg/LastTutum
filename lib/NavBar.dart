import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutumapp/invite_code.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            child: UserAccountsDrawerHeader(
              accountName: Text(
                'Mohamed Shebl',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              accountEmail: Text(
                'Mohamed@gmail.com',
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.asset(
                    'images/man.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                image: AssetImage(
                  'images/tile_background copy.png',
                ),
                fit: BoxFit.cover,
              )),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Account'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () => null,
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text('Invite Code'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InvCode()))
            },
          ),
          ListTile(
            leading: Icon(Icons.people_sharp),
            title: Text('Invite Medfriend'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Connect to Tutum Watch'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
