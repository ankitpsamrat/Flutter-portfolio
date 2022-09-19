import 'package:flutter/material.dart';
import 'package:myport2/pages/about_page.dart';
import 'package:myport2/pages/home_page.dart';
import 'package:myport2/pages/project_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SAMRAT',
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'about': (context) => AboutPage(),
        'project': (context) => ProjectPage(),
      },
    ),
  );
}
