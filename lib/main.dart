import 'package:flutter/material.dart';
import 'package:myport2/about_page.dart';
import 'package:myport2/home.dart';
import 'package:myport2/project_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'project',
      routes: {
        'home': (context) => HomePage(),
        'about': (context) => AboutPage(),
        'project': (context) => ProjectPage(),
      },
    ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Home(),
//     );
//   }
// }
