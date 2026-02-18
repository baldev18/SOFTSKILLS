import 'package:b/screens/homescreen.dart';
import 'package:b/screens/lessonscreeen.dart';
import 'package:b/screens/loginscreen.dart';
import 'package:b/screens/profilescreen.dart';
import 'package:b/screens/registerscreen.dart';
import 'package:b/screens/settingsscreen.dart';
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