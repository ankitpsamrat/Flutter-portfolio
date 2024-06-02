import 'package:flutter/material.dart';
import 'package:myport2/services/navigation_service.dart';
import 'package:myport2/src/pages/contact_page.dart';
import 'src/pages/about_page.dart';
import 'src/pages/home_page.dart';
import 'src/pages/project_page.dart';

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
        'about': (context) => const AboutPage(),
        'project': (context) => const ProjectPage(),
        'contact': (context) => const ContactPage(),
      },
    );
  }
}
