import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myport2/helpers/responsive.dart';
import 'package:myport2/helpers/url_launch_method.dart';
import 'package:myport2/services/enums.dart';
import 'package:myport2/src/widgets/common_widget.dart';

class SocialMedia extends StatelessWidget {
  SocialMedia({super.key});

  final Map<UrlName, String> _socialMedia = {
    UrlName.linkedIn: 'assets/svgs/linkedinIcon.svg',
    UrlName.instagram: 'assets/svgs/instagramIcon.svg',
    UrlName.facebook: 'assets/svgs/facebookIcon.svg',
    UrlName.twitter: 'assets/svgs/xIcon.svg',
    UrlName.github: 'assets/svgs/githubIcon.svg',
    UrlName.portfolio: 'assets/svgs/portfolio.svg',
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
            final UrlName name = _socialMedia.keys.elementAt(index);

            return GestureDetector(
              onTap: () {
                launchURL(name);
              },
              child: Container(
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
                      '  ${name.name.toUpperCase()}',
                      style: TextStyle(
                        fontSize: 11 * AppUI.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
