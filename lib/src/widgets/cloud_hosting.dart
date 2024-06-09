import 'package:flutter/material.dart';
import 'package:myport2/helpers/responsive.dart';
import 'package:myport2/src/widgets/skill_card.dart';

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
