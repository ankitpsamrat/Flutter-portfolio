import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myport2/helpers/responsive.dart';
import 'package:myport2/src/widgets/common_widget.dart';

class SocialMedia extends StatelessWidget {
  SocialMedia({super.key});

  final Map<String, String> _socialMedia = {
    'LinkedIn': 'assets/svgs/linkedinIcon.svg',
    'Github': 'assets/svgs/githubIcon.svg',
    'Instagram': 'assets/svgs/instagramIcon.svg',
    'Facebook': 'assets/svgs/facebookIcon.svg',
    'Twitter': 'assets/svgs/xIcon.svg',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonWidget.sectionTitle('Social media'),
        GridView.builder(
          itemCount: _socialMedia.keys.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.6,
          ),
          itemBuilder: (BuildContext context, int index) {
            final String img = _socialMedia.values.elementAt(index);
            final String name = _socialMedia.keys.elementAt(index);

            return Container(
              margin: CommonWidget.padding,
              padding: EdgeInsets.only(left: 3 * AppUI.dw),
              decoration: CommonWidget.boxDecoration,
              child: Row(
                children: [
                  SvgPicture.asset(
                    img,
                    height: 5 * AppUI.dh,
                  ),
                  Text(
                    '  $name',
                    style: TextStyle(
                      fontSize: 12 * AppUI.sp,
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
