import 'package:flutter/material.dart';
import 'package:flutter_img/flutter_img.dart';
import 'package:myport2/helpers/responsive.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    Key? key,
    required this.techUrl,
    required this.techName,
  }) : super(key: key);

  final String techUrl;
  final String techName;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Img(techUrl, height: 40),
          ),
          Text(
            techName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11 * AppUI.sp,
            ),
          ),
        ],
      ),
    );
  }
}
