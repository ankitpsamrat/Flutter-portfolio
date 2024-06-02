import 'package:flutter/material.dart';
import 'package:myport2/helpers/responsive.dart';
import 'package:myport2/src/widgets/skill_card.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //

  final Map<String, String> _skillsData = {
    'Flutter':
        'https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png',
    'Dart':
        'https://user-images.githubusercontent.com/26507463/53453892-49908900-3a04-11e9-9dce-77ed3d694326.png',
    'Firebase':
        'https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png',
    'Java': 'https://cdn-icons-png.flaticon.com/512/226/226777.png',
    'MySql': 'https://www.mysql.com/common/logos/logo-mysql-170x115.png',
    'C':
        'https://upload.wikimedia.org/wikipedia/commons/1/18/C_Programming_Language.svg',
    'C++':
        'https://upload.wikimedia.org/wikipedia/commons/1/18/ISO_C%2B%2B_Logo.svg',
    'HTML':
        'https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg',
    'CSS':
        'https://upload.wikimedia.org/wikipedia/commons/d/d5/CSS3_logo_and_wordmark.svg',
    'Git':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/1024px-Git_icon.svg.png',
    'GitHub':
        'https://upload.wikimedia.org/wikipedia/commons/9/91/Octicons-mark-github.svg',
  };

  // don't delete
  // myAchive(nums, type) {
  //   return Row(
  //     children: [
  //       Text(
  //         nums,
  //         style: const TextStyle(
  //           fontSize: 30,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //       Container(
  //         margin: const EdgeInsets.only(top: 10),
  //         child: Text(type),
  //       ),
  //     ],
  //   );
  // }

  // mySpec(icon, tech) {
  //   return Container(
  //     width: 105,
  //     height: 115,
  //     margin: const EdgeInsets.all(0),
  //     child: Card(
  //       color: Colors.black,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(15),
  //       ),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Icon(
  //             icon,
  //             color: Colors.white,
  //           ),
  //           const SizedBox(height: 10),
  //           Text(
  //             tech,
  //             style: const TextStyle(
  //               color: Colors.white,
  //               fontSize: 15,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            icon: const Icon(Icons.menu, color: Colors.black),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: TextButton(
                  child: Text(
                    'About Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12 * AppUI.sp,
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
                  child: Text(
                    'Projects',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12 * AppUI.sp,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'project');
                  },
                ),
              ),
              PopupMenuItem(
                value: 3,
                child: TextButton(
                  child: Text(
                    'Contacts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12 * AppUI.sp,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'contact');
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
                Image.asset(
                  'assets/images/mypic.png',
                  height: 25 * AppUI.dh,
                ),
                SizedBox(height: 4 * AppUI.dh),
                Text(
                  'Ankit Pratap Samrat',
                  style: TextStyle(
                    fontSize: 22 * AppUI.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1 * AppUI.dh),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 15 * AppUI.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3 * AppUI.dw),
                  margin: EdgeInsets.symmetric(
                    horizontal: 8 * AppUI.dw,
                    vertical: 4 * AppUI.dh,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD3ECFF),
                    border: Border.all(color: const Color(0xFF3BA1EF)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12 * AppUI.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      children: const [
                        TextSpan(
                            text:
                                "Hello there! I'm a passionate learner, and proficient coder. Currently, I contribute my skills and expertise as a software developer at "),
                        TextSpan(
                          text: 'Benny.',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                            text:
                                " Let's explore the exciting world of technology together!."),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SlidingUpPanel(
            minHeight: 25 * AppUI.dh,
            maxHeight: 52 * AppUI.dh,
            borderRadius: BorderRadius.circular(20),
            panel: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  thickness: 3,
                  color: Colors.black,
                  indent: 44 * AppUI.dw,
                  endIndent: 44 * AppUI.dw,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4 * AppUI.dw),
                  child: Text(
                    'My Skills',
                    style: TextStyle(
                      fontSize: 15 * AppUI.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GridView.builder(
                  itemCount: _skillsData.keys.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    // crossAxisSpacing: 2 * AppUI.dw,
                    // mainAxisSpacing: 2 * AppUI.dw,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    final String techUrl = _skillsData.values.elementAt(index);
                    final String techName = _skillsData.keys.elementAt(index);

                    return Container(
                      margin: EdgeInsets.all(3 * AppUI.dw),
                      child: SkillCard(
                        techUrl: techUrl,
                        techName: techName,
                      ),
                    );
                  },
                ),

                //     SizedBox(height: 20),
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         SkillCard2(
                //           techUrl:
                //               ,
                //           techName: 'Git',
                //         ),
                //         SkillCard(
                //           techUrl:
                //               ,
                //           techName: 'Github',
                //         ),
                //         SkillCard2(
                //           techUrl:
                //               'https://user-images.githubusercontent.com/26507463/53453892-49908900-3a04-11e9-9dce-77ed3d694326.png',
                //           techName: 'Dart',
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
