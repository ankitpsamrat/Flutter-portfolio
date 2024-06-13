// ignore_for_file: deprecated_member_use

import 'package:myport2/services/enums.dart';
import 'package:url_launcher/url_launcher.dart';

launchURL(UrlName urlName) async {
  const url = 'https://github.com/ankitpsamrat';
  const url2 = 'https://www.linkedin.com/in/ankitpsamrat';
  const url3 = 'https://www.instagram.com/ankitpsamrat/';
  const url4 = 'https://twitter.com/ankitpsamrat';
  const url5 = 'https://www.facebook.com/ankitpsamrat';
  const url6 = 'https://www.appbenny.com/';
  const url7 = 'https://ankitpsamrat.netlify.app';

  if (urlName == UrlName.github) {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } else if (urlName == UrlName.linkedIn) {
    if (await canLaunch(url2)) {
      await launch(url2);
    } else {
      throw 'Could not launch $url2';
    }
  } else if (urlName == UrlName.instagram) {
    if (await canLaunch(url3)) {
      await launch(url3);
    } else {
      throw 'Could not launch $url3';
    }
  } else if (urlName == UrlName.twitter) {
    if (await canLaunch(url4)) {
      await launch(url4);
    } else {
      throw 'Could not launch $url4';
    }
  } else if (urlName == UrlName.facebook) {
    if (await canLaunch(url5)) {
      await launch(url5);
    } else {
      throw 'Could not launch $url5';
    }
  } else if (urlName == UrlName.benny) {
    if (await canLaunch(url6)) {
      await launch(url6);
    } else {
      throw 'Could not launch $url5';
    }
  } else if (urlName == UrlName.portfolio) {
    if (await canLaunch(url7)) {
      await launch(url7);
    } else {
      throw 'Could not launch $url5';
    }
  }
}
