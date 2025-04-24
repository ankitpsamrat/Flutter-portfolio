import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_app/helpers/responsive.dart';
import 'package:portfolio_app/helpers/url_launch_method.dart';
import 'package:portfolio_app/services/enums.dart';
import 'package:portfolio_app/src/widgets/common_widget.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  Widget _myproject(lang, title, desc, star) {
    return Container(
      margin: CommonWidget.margin,
      padding: CommonWidget.padding,
      decoration: CommonWidget.boxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lang,
            style: TextStyle(
              color: Colors.black,
              fontSize: 11 * AppUI.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1 * AppUI.dh),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13 * AppUI.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            desc,
            style: TextStyle(
              color: Colors.black,
              fontSize: 10 * AppUI.sp,
            ),
          ),
          SizedBox(height: 1 * AppUI.dh),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.black,
                size: 2 * AppUI.dh,
              ),
              Text(
                ' $star',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10 * AppUI.sp,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  launchURL(UrlName.github);
                },
                icon: SvgPicture.asset(
                  'assets/svgs/githubIcon.svg',
                  height: 4 * AppUI.dh,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              _myproject(
                'FLUTTER',
                'QR Application',
                'Basic qr code scanner and generator application.',
                '8.5',
              ),
              _myproject(
                'JAVA',
                'Travel management system',
                'Travel and tourism management system with mysql database.',
                '10',
              ),
              _myproject(
                'FLUTTER',
                'Instagram clone',
                'Instagram clone with basic feature & firebase database.',
                '8',
              ),
              _myproject(
                'FLUTTER',
                'Quiz application',
                'Very simple quiz application.',
                '9',
              ),
              _myproject(
                'HTML, CSS',
                'Portfolio website',
                'My simple & fully responsive portfolio website.',
                '10',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
