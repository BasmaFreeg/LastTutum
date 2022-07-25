import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:tutumapp/addpat.dart';

class UserModel {
  // final int id;
  final String Doc_name;
  // final String Specialization;

  UserModel({
    // required this.id,
    required this.Doc_name,
    // required this.Specialization,
  });
}

class PatList extends StatelessWidget {
  List<UserModel> user = [
    UserModel(
        // id: 100,
        Doc_name: 'Ziad Mohamed'),
    // Specialization: 'Cardiovascular disease specialist'),
    UserModel(
        // id: 101,
        Doc_name: 'Mohamed Ahmed'),
    // Specialization: 'Cardiovascular disease specialist'),
    UserModel(
        // id: 102,
        Doc_name: 'Emad mohamed'),
    // Specialization: 'Cardiovascular disease specialist'),
    UserModel(
        // id: 100,
        Doc_name: 'Ziad Mohamed'),
    // Specialization: 'Cardiovascular disease specialist'),
    UserModel(
        // id: 101,
        Doc_name: 'Wael Ahmed'),
    // Specialization: 'Cardiovascular disease specialist'),
    // UserModel(
    //     id: 102,
    //     Doc_name: 'Nader mohamed',
    //     Specialization: 'Cardiovascular disease specialist'),
  ];
  @override
  Widget build(BuildContext context) {
    var primaryColor = Color.fromARGB(255, 228, 42, 76);
    var primaryColor2 = Color(0xFFFFDBDB);
    var primaryColor3 = Color(0xFFEDE8E8);
    var nameController = TextEditingController();
    var ageController = TextEditingController();
    int _value = 1;
    return Scaffold(
      backgroundColor: primaryColor2,
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
              Text("DR. Amged",
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
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => addpat()));
              },
              icon: Image.asset(
                'images/plus.png',
              ),
            ),
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(user[index]),
        separatorBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(start: 20),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[400],
          ),
        ),
        itemCount: user.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                          radius: 24.0,
                          //backgroundImage: AssetImage('images/woman-2.png'),
                          backgroundColor: Colors.pink,
                          child: new Image.asset(
                            'images/man.png',
                          )),
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: Color(0xFFFFDBDB),
                      ),
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '',
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            '${user.Doc_name}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      // Text(
                      //   '${user.Specialization}',
                      //   maxLines: 1,
                      //   overflow: TextOverflow.ellipsis,
                      //   style: TextStyle(
                      //     color: Colors.black54,
                      //   ),
                      // )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
