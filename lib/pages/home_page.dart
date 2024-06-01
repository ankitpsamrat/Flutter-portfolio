// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:myport2/widgets/skill_card.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
// import 'package:sliding_sheet/sliding_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //

  //   my achivement method

  myAchive(nums, type) {
    return Row(
      children: [
        Text(
          nums,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(type),
        ),
      ],
    );
  }

  //   my specialization method

  mySpec(icon, tech) {
    return Container(
      width: 105,
      height: 115,
      margin: const EdgeInsets.all(0),
      child: Card(
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(height: 10),
              Text(
                tech,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          // elevation: 0,
          // backgroundColor: Colors.transparent,
          actions: [
            PopupMenuButton(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              icon: const Icon(Icons.menu, color: Colors.black),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: TextButton(
                    child: const Text(
                      'About Me',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'about');
                    },
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: TextButton(
                    child: const Text(
                      'Projects',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'project');
                    },
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: TextButton(
                    child: const Text(
                      'Contacts',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'project');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
        body: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Image.asset(
                    'assets/images/mypic.png',
                    height: 150,
                    // fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Ankit Pratap Samrat',
                    style: TextStyle(
                      // color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(
                      // color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SlidingUpPanel(
              minHeight: 200,
              maxHeight: 500,
              borderRadius: BorderRadius.circular(20),
              panel: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 10),
                  Text(
                    'Specialization In',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SkillCard2(
                            techUrl:
                                'https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png',
                            techName: 'Flutter',
                          ),
                          SkillCard2(
                            techUrl:
                                'https://user-images.githubusercontent.com/26507463/53453892-49908900-3a04-11e9-9dce-77ed3d694326.png',
                            techName: 'Dart',
                          ),
                          SkillCard2(
                            techUrl:
                                'https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png',
                            techName: 'Firebase',
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SkillCard2(
                            techUrl:
                                'https://cdn-icons-png.flaticon.com/512/226/226777.png',
                            techName: 'Java',
                          ),
                          SkillCard2(
                            techUrl:
                                'https://www.mysql.com/common/logos/logo-mysql-170x115.png',
                            techName: 'MySql',
                          ),
                          SkillCard(
                            techUrl:
                                'https://upload.wikimedia.org/wikipedia/commons/1/18/C_Programming_Language.svg',
                            techName: 'C',
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SkillCard(
                            techUrl:
                                'https://upload.wikimedia.org/wikipedia/commons/1/18/ISO_C%2B%2B_Logo.svg',
                            techName: 'C++',
                          ),
                          SkillCard(
                            techUrl:
                                'https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg',
                            techName: 'HTML',
                          ),
                          SkillCard(
                            techUrl:
                                'https://upload.wikimedia.org/wikipedia/commons/d/d5/CSS3_logo_and_wordmark.svg',
                            techName: 'CSS',
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SkillCard2(
                            techUrl:
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/1024px-Git_icon.svg.png',
                            techName: 'Git',
                          ),
                          SkillCard(
                            techUrl:
                                'https://upload.wikimedia.org/wikipedia/commons/9/91/Octicons-mark-github.svg',
                            techName: 'Github',
                          ),
                          SkillCard2(
                            techUrl:
                                'https://user-images.githubusercontent.com/26507463/53453892-49908900-3a04-11e9-9dce-77ed3d694326.png',
                            techName: 'Dart',
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )

        // SlidingSheet(
        //   elevation: 8,
        //   cornerRadius: 50,
        //   snapSpec: const SnapSpec(
        //     snap: true,
        //     snappings: [0.38, 0.7, 1.0],
        //     positioning: SnapPositioning.relativeToAvailableSpace,
        //   ),
        //   body: Container(
        //     margin: const EdgeInsets.only(top: 60),
        //     padding: const EdgeInsets.all(40),
        //     child: Column(
        //       children: [
        //         Image.asset(
        //           'assets/images/mypic.png',
        //           height: 200,
        //           // fit: BoxFit.contain,
        //         ),
        //         const SizedBox(height: 40),
        //         const Text(
        //           'Ankit Pratap Samrat',
        //           style: TextStyle(
        //             color: Colors.white,
        //             fontSize: 30,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //         const SizedBox(height: 10),
        //         const Text(
        //           'Flutter Developer',
        //           style: TextStyle(
        //             color: Colors.white,
        //             fontSize: 20,
        //           ),
        //         ),
        //       ],
        //     ),
        //     // child: Stack(
        //     //   children: [
        //     //     Container(
        //     //       margin: const EdgeInsets.only(top: 35),
        //     //       child: ShaderMask(
        //     //         shaderCallback: (rect) {
        //     //           return const LinearGradient(
        //     //             begin: Alignment.center,
        //     //             end: Alignment.bottomCenter,
        //     //             colors: [
        //     //               Colors.black,
        //     //               Colors.transparent,
        //     //             ],
        //     //           ).createShader(
        //     //             Rect.fromLTRB(0, 0, rect.width, rect.height),
        //     //           );
        //     //         },
        //     //         blendMode: BlendMode.dstIn,
        //     //         child: Image.asset(
        //     //           'assets/images/mypic.png',
        //     //           // height: 400,
        //     //           fit: BoxFit.contain,
        //     //         ),
        //     //       ),
        //     //     ),
        //     //     Container(
        //     //       alignment: Alignment.center,
        //     //       margin: EdgeInsets.only(
        //     //         top: MediaQuery.of(context).size.height * 0.49,
        //     //       ),
        //     //       child: Column(
        //     //         children: const [
        //     //           Text(
        //     //             'Ankit Pratap Samrat',
        //     //             style: TextStyle(
        //     //               color: Colors.white,
        //     //               fontSize: 30,
        //     //               fontWeight: FontWeight.bold,
        //     //             ),
        //     //           ),
        //     //           Text(
        //     //             'Software Developer',
        //     //             style: TextStyle(
        //     //               color: Colors.white,
        //     //               fontSize: 20,
        //     //             ),
        //     //           ),
        //     //         ],
        //     //       ),
        //     //     ),
        //     //   ],
        //     // ),
        //   ),
        //   builder: (context, state) {
        //     return Container(
        //       margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
        //       height: 600,
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Row(
        //                 children: [
        //                   TextButton(
        //                     onPressed: () {
        //                       Navigator.pushNamed(context, 'project');
        //                     },
        //                     child: const Text(
        //                       'PROJECTS',
        //                       style: TextStyle(
        //                         fontSize: 20,
        //                         // fontWeight: FontWeight.bold,
        //                       ),
        //                     ),
        //                   ),
        //                   TextButton(
        //                     onPressed: () {
        //                       Navigator.pushNamed(context, 'about');
        //                     },
        //                     child: const Text(
        //                       'ABOUT',
        //                       style: TextStyle(
        //                         fontSize: 20,
        //                         // fontWeight: FontWeight.bold,
        //                       ),
        //                     ),
        //                   ),
        //                   TextButton(
        //                     onPressed: () {
        //                       Navigator.pushNamed(context, 'project');
        //                     },
        //                     child: const Text(
        //                       'CONTACT',
        //                       style: TextStyle(
        //                         fontSize: 20,
        //                         // fontWeight: FontWeight.bold,
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           ),
        //           const SizedBox(height: 30),
        //           const Text(
        //             'Specialization In',
        //             style: TextStyle(
        //               fontSize: 20,
        //               fontWeight: FontWeight.bold,
        //             ),
        //           ),
        //           const SizedBox(height: 20),
        //           Column(
        //             children: [
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: const [
        //                   SkillCard2(
        //                     techUrl:
        //                         'https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png',
        //                     techName: 'Flutter',
        //                   ),
        //                   SkillCard2(
        //                     techUrl:
        //                         'https://user-images.githubusercontent.com/26507463/53453892-49908900-3a04-11e9-9dce-77ed3d694326.png',
        //                     techName: 'Dart',
        //                   ),
        //                   SkillCard2(
        //                     techUrl:
        //                         'https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png',
        //                     techName: 'Firebase',
        //                   ),
        //                 ],
        //               ),
        //               const SizedBox(height: 10),
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: const [
        //                   SkillCard2(
        //                     techUrl:
        //                         'https://cdn-icons-png.flaticon.com/512/226/226777.png',
        //                     techName: 'Java',
        //                   ),
        //                   SkillCard2(
        //                     techUrl:
        //                         'https://www.mysql.com/common/logos/logo-mysql-170x115.png',
        //                     techName: 'MySql',
        //                   ),
        //                   SkillCard(
        //                     techUrl:
        //                         'https://upload.wikimedia.org/wikipedia/commons/1/18/C_Programming_Language.svg',
        //                     techName: 'C',
        //                   ),
        //                 ],
        //               ),
        //               const SizedBox(height: 10),
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: const [
        //                   SkillCard(
        //                     techUrl:
        //                         'https://upload.wikimedia.org/wikipedia/commons/1/18/ISO_C%2B%2B_Logo.svg',
        //                     techName: 'C++',
        //                   ),
        //                   SkillCard(
        //                     techUrl:
        //                         'https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg',
        //                     techName: 'HTML',
        //                   ),
        //                   SkillCard(
        //                     techUrl:
        //                         'https://upload.wikimedia.org/wikipedia/commons/d/d5/CSS3_logo_and_wordmark.svg',
        //                     techName: 'CSS',
        //                   ),
        //                 ],
        //               ),
        //               const SizedBox(height: 10),
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: const [
        //                   SkillCard2(
        //                     techUrl:
        //                         'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/1024px-Git_icon.svg.png',
        //                     techName: 'Git',
        //                   ),
        //                   SkillCard(
        //                     techUrl:
        //                         'https://upload.wikimedia.org/wikipedia/commons/9/91/Octicons-mark-github.svg',
        //                     techName: 'Github',
        //                   ),
        //                   SkillCard2(
        //                     techUrl:
        //                         'https://user-images.githubusercontent.com/26507463/53453892-49908900-3a04-11e9-9dce-77ed3d694326.png',
        //                     techName: 'Dart',
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     );
        //   },
        // ),
        );
  }
}
