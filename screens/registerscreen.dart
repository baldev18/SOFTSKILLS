import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  String gender = "Male";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Register")),

      body: Column(
        children: [

          TextField(
            decoration: InputDecoration(labelText: "Name"),
          ),

          TextField(
            decoration: InputDecoration(labelText: "Email"),
          ),

          RadioListTile(
            title: Text("Male"),
            value: "Male",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value!;
              });
            },
          ),

          RadioListTile(
            title: Text("Female"),
            value: "Female",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value!;
              });
            },
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Register"),
          )

        ],
      ),
    );
  }
}
