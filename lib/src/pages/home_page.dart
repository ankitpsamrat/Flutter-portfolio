import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myport2/helpers/responsive.dart';
import 'package:myport2/helpers/url_launch_method.dart';
import 'package:myport2/services/enums.dart';
import 'package:myport2/src/widgets/cloud_hosting.dart';
import 'package:myport2/src/widgets/common_widget.dart';
import 'package:myport2/src/widgets/operating_system.dart';
import 'package:myport2/src/widgets/tech_skill.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      body: SlidingUpPanel(
        minHeight: 25 * AppUI.dh,
        maxHeight: 46 * AppUI.dh,
        borderRadius: BorderRadius.circular(20),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4 * AppUI.dh),
              child: Image.asset(
                'assets/images/mypic.png',
                height: 25 * AppUI.dh,
              ),
            ),
            Text(
              'Ankit Pratap Samrat',
              style: TextStyle(
                fontSize: 22 * AppUI.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 15 * AppUI.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              padding: CommonWidget.padding,
              decoration: CommonWidget.boxDecoration,
              margin: EdgeInsets.symmetric(
                horizontal: 4 * AppUI.dw,
                vertical: 4 * AppUI.dh,
              ),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12 * AppUI.sp,
                    fontWeight: FontWeight.w500,
                    wordSpacing: 1,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          "Hello there! I'm a passionate learner, and proficient coder. Currently, I contribute my skills and expertise as a software developer at ",
                    ),
                    TextSpan(
                      text: 'Benny.',
                      style: const TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => launchURL(UrlName.benny),
                    ),
                    const TextSpan(
                      text:
                          " Let's explore the exciting world of technology together!.",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        panelBuilder: (sc) {
          return SingleChildScrollView(
            controller: sc,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  thickness: 3,
                  color: Colors.black,
                  indent: 44 * AppUI.dw,
                  endIndent: 44 * AppUI.dw,
                ),
                TechSkills(),
                CloudHosting(),
                OperatingSystems(),
              ],
            ),
          );
        },
      ),
    );
  }
}
