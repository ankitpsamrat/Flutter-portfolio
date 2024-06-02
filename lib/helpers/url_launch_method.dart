// ignore_for_file: deprecated_member_use

import 'package:url_launcher/url_launcher.dart';

launchURL(String value) async {
  const url = 'https://github.com/ankitpsamrat';
  const url2 = 'https://www.linkedin.com/in/ankitpsamrat';
  const url3 = 'https://www.instagram.com/ankitpsamrat/';
  const url4 = 'https://twitter.com/ankitpsamrat';
  const url5 = 'https://www.facebook.com/ankitpsamrat';

  if (value == 'Github') {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } else if (value == 'Linkedin') {
    if (await canLaunch(url2)) {
      await launch(url2);
    } else {
      throw 'Could not launch $url2';
    }
  } else if (value == 'Instagram') {
    if (await canLaunch(url3)) {
      await launch(url3);
    } else {
      throw 'Could not launch $url3';
    }
  } else if (value == 'Twitter') {
    if (await canLaunch(url4)) {
      await launch(url4);
    } else {
      throw 'Could not launch $url4';
    }
  } else if (value == 'Facebook') {
    if (await canLaunch(url5)) {
      await launch(url5);
    } else {
      throw 'Could not launch $url5';
    }
  }
}
