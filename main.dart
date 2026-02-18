import 'package:baldevvv/screens/homescreen.dart';
import 'package:baldevvv/screens/lessonscreeen.dart';
import 'package:baldevvv/screens/loginscreen.dart';
import 'package:baldevvv/screens/profilescreen.dart';
import 'package:baldevvv/screens/registerscreen.dart';
import 'package:baldevvv/screens/settingsscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EduTrackApp());
}

class EduTrackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduTrack',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => HomeScreen(),
        '/lessons': (context) => LessonsScreen(),
        '/profile': (context) => ProfileScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
