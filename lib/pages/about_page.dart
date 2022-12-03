// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:myport2/widgets/about_card.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 60),
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Image.asset(
                'assets/images/mypic.png',
                height: 200,
                // fit: BoxFit.contain,
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
            ],
          ),
          // body: Container(
          //   child: Stack(
          //     children: [
          //       Container(
          //         margin: const EdgeInsets.only(top: 60),
          //         child: ShaderMask(
          //           shaderCallback: (rect) {
          //             return const LinearGradient(
          //               begin: Alignment.center,
          //               end: Alignment.bottomCenter,
          //               colors: [
          //                 Colors.black,
          //                 Colors.transparent,
          //               ],
          //             ).createShader(
          //               Rect.fromLTRB(0, 0, rect.width, rect.height),
          //             );
          //           },
          //           blendMode: BlendMode.dstIn,
          //           child: Image.asset(
          //             'assets/images/mypic.png',
          //             // height: 400,
          //             fit: BoxFit.contain,
          //           ),
          //         ),
          //       ),
          //       Container(
          //         alignment: Alignment.center,
          //         margin: EdgeInsets.only(
          //           top: MediaQuery.of(context).size.height * 0.55,
          //         ),
          //         child: Column(
          //           children: [
          //             const SizedBox(height: 10),
          //             const Text(
          //               'Hello I am',
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 20,
          //               ),
          //             ),
          //             const SizedBox(height: 10),
          //             const Text(
          //               'Ankit Pratap Samrat',
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 30,
          //                 fontWeight: FontWeight.bold,
          //               ),
          //             ),
          //             const Text(
          //               'Software Developer',
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 20,
          //               ),
          //             ),
          //             const SizedBox(height: 20),
          //             SizedBox(
          //               width: 100,
          //               child: TextButton(
          //                 onPressed: () {},
          //                 style: TextButton.styleFrom(
          //                   foregroundColor: Colors.black,
          //                   backgroundColor: Colors.white,
          //                 ),
          //                 child: const Text('Hire me'),
          //               ),
          //             ),
          //             const SizedBox(height: 40),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 IconButton(
          //                   onPressed: () {
          //                     launchURL('Instagram');
          //                   },
          //                   icon: const Icon(
          //                     FontAwesomeIcons.instagram,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //                 IconButton(
          //                   onPressed: () {
          //                     launchURL('Linkedin');
          //                   },
          //                   icon: const Icon(
          //                     FontAwesomeIcons.linkedin,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //                 IconButton(
          //                   onPressed: () {
          //                     launchURL('Github');
          //                   },
          //                   icon: const Icon(
          //                     FontAwesomeIcons.github,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //                 IconButton(
          //                   onPressed: () {
          //                     launchURL('Twitter');
          //                   },
          //                   icon: const Icon(
          //                     FontAwesomeIcons.twitter,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //                 IconButton(
          //                   onPressed: () {
          //                     launchURL('Facebook');
          //                   },
          //                   icon: const Icon(
          //                     FontAwesomeIcons.facebook,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
