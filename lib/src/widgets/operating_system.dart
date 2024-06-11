import 'package:flutter/material.dart';
import 'package:myport2/helpers/responsive.dart';
import 'package:myport2/src/widgets/common_widget.dart';
import 'package:myport2/src/widgets/skill_card.dart';

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
          padding: EdgeInsets.only(top: 1 * AppUI.dh),
          child: CommonWidget.sectionTitle('Operating Systems'),
        ),
        GridView.builder(
          itemCount: _mapData.keys.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (BuildContext context, int index) {
            final String techUrl = _mapData.values.elementAt(index);
            final String techName = _mapData.keys.elementAt(index);

            return Padding(
              padding: CommonWidget.padding,
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
