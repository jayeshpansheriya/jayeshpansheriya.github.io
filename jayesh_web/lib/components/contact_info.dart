import 'package:jayesh_web/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'round_icon_button.dart';

class ContactInfo extends StatelessWidget {
  ContactInfo({
    Key key,
  }) : super(key: key);

  final List<Widget> contactData = [
    RoundIconButton(
      icon: FontAwesomeIcons.github,
      onPressed: () async {
        const url = 'https://github.com/jayeshpansheriya';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
    RoundIconButton(
      icon: FontAwesomeIcons.linkedin,
      onPressed: () async {
        const url = 'https://in.linkedin.com/in/jayeshpansheriya';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
    RoundIconButton(
      icon: FontAwesomeIcons.instagram,
      onPressed: () async {
        const url = 'https://www.instagram.com/jay_pansheriya';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
    RoundIconButton(
      icon: FontAwesomeIcons.twitter,
      onPressed: () async {
        const url = 'https://twitter.com/jayeshpatel1995';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
    RoundIconButton(
      icon: FontAwesomeIcons.medium,
      onPressed: () async {
        const url = 'https://medium.com/@pansheriyajayesh';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 25.0,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: contactData,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Copyright \u00a9 2020 | Jayesh Pansheriya',
            textAlign: TextAlign.center,
            style: kLabelTextStyle.copyWith(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
