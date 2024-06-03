import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myport2/helpers/responsive.dart';
import 'package:myport2/helpers/url_launch_method.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  myproject(lang, title, desc, star) {
    return SizedBox(
      height: 220,
      width: 90 * AppUI.dw,
      child: Card(
        color: const Color(0xff262628),
        child: Container(
          margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                desc,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 18,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    star,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {
                      launchURL('Github');
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
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myproject(
                'FLUTTER',
                'QR Application',
                'Basic qr code scanner and generator application.',
                '8.5',
              ),
              myproject(
                'JAVA',
                'Travel management system',
                'Travel and tourism management system with mysql database.',
                '10',
              ),
              myproject(
                'FLUTTER',
                'Instagram clone',
                'Instagram clone with basic feature & firebase database.',
                '8',
              ),
              myproject(
                'FLUTTER',
                'Quiz application',
                'Very simple quiz application.',
                '9',
              ),
              myproject(
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
