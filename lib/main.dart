import 'package:flutter/material.dart';
import 'package:portfolio_app/services/navigation_service.dart';
import 'package:portfolio_app/src/pages/about_page.dart';
import 'package:portfolio_app/src/pages/contact_page.dart';
import 'package:portfolio_app/src/pages/home_page.dart';
import 'package:portfolio_app/src/pages/project_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'SAMRAT',
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(),
        'about': (context) => AboutPage(),
        'project': (context) => const ProjectPage(),
        'contact': (context) => const ContactPage(),
      },
    );
  }
}
