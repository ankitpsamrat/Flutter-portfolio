// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:myport2/src/widgets/about_card.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/mypic.png',
              height: 200,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'data',
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Hello I am',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Ankit Pratap Samrat',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 30),
            const AboutCard(
              aboutText: '''I am Ankit Pratap Samrat,
            A developer, leaner & coder.
            I want to became a skilled Web & App Developer.
            I love to work on products that makes a quite significant
            positive impact on day to day lives of people.
            I have experience in both frontend & backend development.
            One of my interests are learning.''',
            ),
            const AboutCard(
              aboutText: '''I am Ankit Pratap Samrat,
            A developer, leaner & coder.
            I want to became a skilled Web & App Developer.
            I love to work on products that makes a quite significant
            positive impact on day to day lives of people.
            I have experience in both frontend & backend development.
            One of my interests are learning.''',
            ),
          ],
        ),
      ),
    );
  }
}
