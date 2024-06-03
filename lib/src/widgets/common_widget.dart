import 'package:flutter/material.dart';
import 'package:myport2/helpers/responsive.dart';
import 'package:myport2/src/widgets/skill_card.dart';

class CommonWidget {
  //

  static BoxDecoration boxDecoration = BoxDecoration(
    color: const Color(0xFFD3ECFF),
    border: Border.all(color: const Color(0xFF3BA1EF)),
    borderRadius: BorderRadius.circular(8),
  );
}

class TechSkills extends StatelessWidget {
  TechSkills({super.key});

  final Map<String, String> _mapData = {
    'Flutter': 'assets/svgs/flutterIcon.svg',
    'Dart': 'assets/svgs/dartIcon.svg',
    'Firebase': 'assets/svgs/firebaseIcon.svg',
    'Java': 'assets/svgs/javaIcon.svg',
    'MySql': 'assets/svgs/mysqlIcon.svg',
    'C': 'assets/svgs/cIcon.svg',
    'C++': 'assets/svgs/c++Icon.svg',
    'HTML': 'assets/svgs/htmlIcon.svg',
    'CSS': 'assets/svgs/cssIcon.svg',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1 * AppUI.dh, left: 3 * AppUI.dw),
          child: Text(
            'Tech Skills',
            style: TextStyle(
              fontSize: 15 * AppUI.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridView.builder(
          itemCount: _mapData.keys.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (BuildContext context, int index) {
            final String techUrl = _mapData.values.elementAt(index);
            final String techName = _mapData.keys.elementAt(index);

            return Padding(
              padding: EdgeInsets.all(3 * AppUI.dw),
              child: SkillCard(
                techUrl: techUrl,
                techName: techName,
              ),
            );
          },
        ),
      ],
    );
  }
}

class OperatingSystems extends StatelessWidget {
  OperatingSystems({super.key});

  final Map<String, String> _mapData = {
    'Android': 'assets/svgs/androidIcon.svg',
    'Ios': 'assets/svgs/iosIcon.svg',
    'Windows': 'assets/svgs/windowsIcon.svg',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1 * AppUI.dh, left: 3 * AppUI.dw),
          child: Text(
            'Operating Systems',
            style: TextStyle(
              fontSize: 15 * AppUI.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridView.builder(
          itemCount: _mapData.keys.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (BuildContext context, int index) {
            final String techUrl = _mapData.values.elementAt(index);
            final String techName = _mapData.keys.elementAt(index);

            return Padding(
              padding: EdgeInsets.all(3 * AppUI.dw),
              child: SkillCard(
                techUrl: techUrl,
                techName: techName,
              ),
            );
          },
        ),
      ],
    );
  }
}

class CloudHosting extends StatelessWidget {
  CloudHosting({super.key});

  final Map<String, String> _mapData = {
    'Git': 'assets/svgs/gitIcon.svg',
    'GitHub': 'assets/svgs/githubIcon.svg',
    'Jira': 'assets/svgs/jiraIcon.svg',
    'Bitbucket': 'assets/svgs/bitbucketIcon.svg',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1 * AppUI.dh, left: 3 * AppUI.dw),
          child: Text(
            'Cloud & Hosting',
            style: TextStyle(
              fontSize: 15 * AppUI.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridView.builder(
          itemCount: _mapData.keys.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (BuildContext context, int index) {
            final String techUrl = _mapData.values.elementAt(index);
            final String techName = _mapData.keys.elementAt(index);

            return Padding(
              padding: EdgeInsets.all(3 * AppUI.dw),
              child: SkillCard(
                techUrl: techUrl,
                techName: techName,
              ),
            );
          },
        ),
      ],
    );
  }
}
