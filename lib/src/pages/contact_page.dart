import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myport2/helpers/responsive.dart';
import 'package:myport2/src/widgets/common_widget.dart';
import 'package:myport2/src/widgets/social_media.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contact'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Text(
                'Get in touch',
                style: TextStyle(
                  fontSize: 14 * AppUI.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                  4 * AppUI.dw,
                  1 * AppUI.dw,
                  0,
                  1 * AppUI.dw,
                ),
                margin: EdgeInsets.all(3 * AppUI.dw),
                decoration: CommonWidget.boxDecoration,
                child: Row(
                  children: [
                    SvgPicture.asset('assets/svgs/gmailIcon.svg'),
                    Text(
                      '  ankit.p.15575@gmail.com',
                      style: TextStyle(
                        fontSize: 11 * AppUI.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Clipboard.setData(
                          ClipboardData(text: 'ankit.p.15575@gmail.com'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: const Color(0xFFD3ECFF),
                            content: Text(
                              'Email copied.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14 * AppUI.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
                      icon: Icon(Icons.copy),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2 * AppUI.dh),
                child: SocialMedia(),
              ),
              Text(
                'Feedback',
                style: TextStyle(
                  fontSize: 14 * AppUI.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.all(3 * AppUI.dw),
                padding: EdgeInsets.all(3 * AppUI.dw),
                decoration: CommonWidget.boxDecoration,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Enter your name',
                        hintStyle: TextStyle(fontSize: 12 * AppUI.sp),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 3 * AppUI.dh),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          isDense: true,
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(fontSize: 12 * AppUI.sp),
                        ),
                      ),
                    ),
                    TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
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
                              backgroundColor: const Color(0xFFD3ECFF),
                              content: Text(
                                'Sorry! under development.',
                                style: TextStyle(
                                  color: Colors.black,
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
      ),
    );
  }
}
