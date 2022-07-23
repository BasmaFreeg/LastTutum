import 'package:flutter/material.dart';

import 'AddUserDialog.dart';
import 'user_dialog.dart';

class AddUserDialog extends StatefulWidget {
  final Function(User) addUser;

  AddUserDialog(this.addUser);

  @override
  _AddUserDialogState createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {
  var primaryColor = Color.fromARGB(255, 228, 42, 76);
  @override
  Widget build(BuildContext context) {
    Widget buildTextField(String hint, TextEditingController controller) {
      return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
          cursorColor: primaryColor,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: hint,
            hintStyle: TextStyle(
              fontSize: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 0.0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            contentPadding: EdgeInsets.all(16),
          ),
          controller: controller,
        ),
      );
    }

    var drgnameController = TextEditingController();
    var drugamountController = TextEditingController();
    var drugtypeController = TextEditingController();
    var howlongController = TextEditingController();
    var timeofuseController = TextEditingController();
    var notesController = TextEditingController();

    return Container(
      padding: EdgeInsets.all(8),
      height: 350,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Add Drug',
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Color.fromARGB(255, 228, 42, 76),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildTextField('Drug name', drgnameController),
            buildTextField('Drug Amount', drugamountController),
            buildTextField('Notes', notesController),
            SizedBox(
              height: 10,
            ),
            Container(
              color: primaryColor.withOpacity(0.0),
              child: ElevatedButton(
                onPressed: () {
                  final user = User(drgnameController.text,
                      drugamountController.text, notesController.text);
                  widget.addUser(user);
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 228, 42, 76), // Background color
                ),
                child: Text(
                  'Add Drug',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
