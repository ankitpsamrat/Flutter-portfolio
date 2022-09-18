import 'package:flutter/material.dart';
import 'package:myport2/about_page.dart';
import 'package:myport2/home.dart';
import 'package:myport2/project_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'about': (context) => AboutPage(),
        'project': (context) => ProjectPage(),
      },
    ),
  );
}
