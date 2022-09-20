import 'package:flutter/material.dart';
import '/pages/about_page.dart';
import '/pages/home_page.dart';
import '/pages/project_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SAMRAT',
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(),
        'about': (context) => const AboutPage(),
        'project': (context) => const ProjectPage(),
      },
    ),
  );
}
