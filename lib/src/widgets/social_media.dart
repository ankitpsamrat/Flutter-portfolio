import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myport2/helpers/responsive.dart';
import 'package:myport2/src/widgets/common_widget.dart';

class SocialMedia extends StatelessWidget {
  SocialMedia({super.key});

  final Map<String, String> _socialMedia = {
    'Facebook': 'assets/svgs/facebookIcon.svg',
    'Instagram': 'assets/svgs/instagramIcon.svg',
    'Twitter': 'assets/svgs/xIcon.svg',
    'LinkedIn': 'assets/svgs/linkedinIcon.svg',
    'Github': 'assets/svgs/githubIcon.svg',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Social media',
          style: TextStyle(
            fontSize: 14 * AppUI.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        GridView.builder(
          itemCount: _socialMedia.keys.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.5,
          ),
          itemBuilder: (BuildContext context, int index) {
            final String img = _socialMedia.values.elementAt(index);
            final String name = _socialMedia.keys.elementAt(index);

            return Container(
              margin: EdgeInsets.all(3 * AppUI.dw),
              padding: EdgeInsets.only(left: 3 * AppUI.dw),
              decoration: CommonWidget.boxDecoration,
              child: Row(
                children: [
                  SvgPicture.asset(img),
                  Text(
                    '  $name',
                    style: TextStyle(
                      fontSize: 11 * AppUI.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
