import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//  for svg images type

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
    return Padding(
      padding: const EdgeInsets.all(0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black,
        ),
        child: SizedBox(
          width: 95,
          height: 95,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: SvgPicture.network(techUrl, height: 50),
              ),
              Text(
                techName,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  for png,jpg and other images type

class SkillCard2 extends StatelessWidget {
  const SkillCard2({
    Key? key,
    required this.techUrl,
    required this.techName,
  }) : super(key: key);

  final String techUrl;
  final String techName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black,
        ),
        child: SizedBox(
          width: 95,
          height: 95,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Image.network(techUrl, height: 50),
              ),
              Text(
                techName,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
