import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myport2/helpers/responsive.dart';
import 'package:myport2/src/widgets/common_widget.dart';

class SkillCard extends StatelessWidget {
  final String techUrl;
  final String techName;

  const SkillCard({
    super.key,
    required this.techUrl,
    required this.techName,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: CommonWidget.boxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1 * AppUI.dh),
            child: SvgPicture.asset(
              techUrl,
              height: 4 * AppUI.dh,
            ),
          ),
          Text(
            techName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 11 * AppUI.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
