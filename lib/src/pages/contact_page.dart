import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_app/helpers/responsive.dart';
import 'package:portfolio_app/src/widgets/common_widget.dart';
import 'package:portfolio_app/src/widgets/social_media.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contact'),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonWidget.sectionTitle('Get in touch'),
            Container(
              padding: EdgeInsets.fromLTRB(
                4 * AppUI.dw,
                0.5 * AppUI.dw,
                0,
                0.5 * AppUI.dw,
              ),
              margin: CommonWidget.padding,
              decoration: CommonWidget.boxDecoration,
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/svgs/gmailIcon.svg',
                    height: 5 * AppUI.dh,
                  ),
                  Text(
                    '  ankit.p.15575@gmail.com',
                    style: TextStyle(
                      fontSize: 12 * AppUI.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Clipboard.setData(
                        const ClipboardData(text: 'ankit.p.15575@gmail.com'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.green[300],
                          content: Text(
                            'Email copied.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14 * AppUI.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.copy),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2 * AppUI.dh),
              child: SocialMedia(),
            ),
            CommonWidget.sectionTitle('Feedback'),
            Container(
              margin: CommonWidget.padding.copyWith(bottom: 40),
              padding: CommonWidget.padding,
              decoration: CommonWidget.boxDecoration,
              child: Column(
                children: [
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      isDense: true,
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(fontSize: 12 * AppUI.sp),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3 * AppUI.dh),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(fontSize: 12 * AppUI.sp),
                      ),
                    ),
                  ),
                  TextFormField(
                    maxLines: 5,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      isDense: true,
                      hintText: 'Message',
                      hintStyle: TextStyle(fontSize: 12 * AppUI.sp),
                    ),
                  ),
                  Container(
                    height: 6 * AppUI.dh,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 3 * AppUI.dh),
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              'Sorry! under development.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14 * AppUI.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 14 * AppUI.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
