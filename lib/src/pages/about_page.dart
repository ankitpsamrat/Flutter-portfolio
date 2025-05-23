import 'package:flutter/material.dart';
import 'package:portfolio_app/helpers/responsive.dart';
import 'package:portfolio_app/src/widgets/common_widget.dart';

class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);

  final List<String> _aboutList = [
    'A developer, leaner & coder. I want to became a skilled Web & App Developer. I love to work on products that makes a quite significant positive impact on day to day lives of people. I have experience in both frontend & backend development. One of my interests are learning.',
    "My enthusiasm for creating impactful products that enhance people's daily lives drives my work. Constantly evolving, I am committed to learning and improving my skills, exploring new technologies to stay at the forefront of my field.",
    "Beyond coding, my interests span a wide spectrum—I find joy in traveling, swimming, playing mobile games, watching movies, indulging in comedy shows. I'm equally dedicated to community service, always eager to lend a helping hand.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('About'),
      ),
      body: ListView.builder(
        itemCount: _aboutList.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final String aboutText = _aboutList[index];

          return Container(
            margin: CommonWidget.margin,
            padding: CommonWidget.padding,
            decoration: CommonWidget.boxDecoration,
            child: Text(
              aboutText,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12 * AppUI.sp,
                wordSpacing: 0.5,
              ),
            ),
          );
        },
      ),
    );
  }
}
