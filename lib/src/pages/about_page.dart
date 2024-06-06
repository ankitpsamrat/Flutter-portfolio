import 'package:flutter/material.dart';
import 'package:myport2/helpers/responsive.dart';
import 'package:myport2/src/widgets/common_widget.dart';

class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);

  final List<String> _aboutList = [
    'I am Ankit Pratap Samrat, A developer, leaner & coder. I want to became a skilled Web & App Developer. I love to work on products that makes a quite significant positive impact on day to day lives of people. I have experience in both frontend & backend development. One of my interests are learning.',
    'I am Ankit Pratap Samrat, A developer, leaner & coder. I want to became a skilled Web & App Developer. I love to work on products that makes a quite significant positive impact on day to day lives of people. I have experience in both frontend & backend development. One of my interests are learning.',
    "Greetings, I'm Ankit Pratap Samrat, a passionate software developer with a flair for both frontend and backend development. My enthusiasm for creating impactful products that enhance people's daily lives drives my work. Constantly evolving, I am committed to learning and improving my skills, exploring new technologies to stay at the forefront of my field.",
    "Beyond coding, my interests span a wide spectrum—I find joy in traveling, swimming, playing mobile games, watching movies, indulging in comedy shows. I'm equally dedicated to community service, always eager to lend a helping hand.",
  ];

  Widget _aboutContainer(String aboutText) {
    return Container(
      padding: EdgeInsets.all(3 * AppUI.dw),
      margin: EdgeInsets.all(4 * AppUI.dw),
      decoration: CommonWidget.boxDecoration,
      child: Text(
        aboutText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 12 * AppUI.sp,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('About'),
      ),
      body: ListView.builder(
        itemCount: _aboutList.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final String finalData = _aboutList[index];

          return _aboutContainer(finalData);
        },
      ),
    );
  }
}
