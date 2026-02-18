import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Home")),

      body: Column(
        children: [

          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/lessons');
            },
            child: Text("Lessons"),
          ),

          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/profile');
            },
            child: Text("Profile"),
          ),

          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/settings');
            },
            child: Text("Settings"),
          ),

        ],
      ),
    );
  }
}
