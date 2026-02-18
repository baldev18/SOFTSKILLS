import 'package:flutter/material.dart';

class LessonsScreen extends StatelessWidget {

  final lessons = [
    "Math",
    "Science",
    "English",
    "Computer",
    "History"
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Lessons")),

      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index){

          return Card(
            child: ListTile(
              title: Text(lessons[index]),
            ),
          );

        },
      ),

    );
  }
}
