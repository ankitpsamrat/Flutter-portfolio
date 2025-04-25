import 'package:flutter/material.dart';
import 'package:portfolio_app/helpers/responsive.dart';
import 'package:portfolio_app/src/widgets/common_widget.dart';
import 'package:portfolio_app/src/widgets/skill_card.dart';

class SoftwareSkill extends StatelessWidget {
  SoftwareSkill({super.key});

  final Map<String, String> _mapData = {
    'Postman': 'assets/svgs/Postman.svg',
    'Figma': 'assets/svgs/Figma.svg',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1 * AppUI.dh),
          child: CommonWidget.sectionTitle('Software'),
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
