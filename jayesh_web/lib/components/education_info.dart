import 'package:flutter/material.dart';
import 'package:jayesh_web/responsive_widget.dart';


import '../constants.dart';
import 'education_card.dart';
import 'reusable_card.dart';

class EducationInfo extends StatelessWidget {
  EducationInfo({
    Key key,
  }) : super(key: key);

  final List<Widget> educationCards = [
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: EducationCard(
        collegeName: 'Arun Muchhala Engineering College\, Amreli',
        universityName: 'Gujarat Technological University',
        year: '2013 - 2017',
        courseName: 'BE in Computer Engineering',
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: EducationCard(
        collegeName: 'Swaminarayan Gurukul\, Taravada',
        universityName: 'GSEB',
        year: '2011 - 2013',
        courseName: 'Science',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      customColor: kInactiveCardColor,
      cardChild: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.05,
          bottom: MediaQuery.of(context).size.height * 0.05,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'Education',
                style: kTitleTextStyle,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: ResponsiveWidget(
                largeScreen: Wrap(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,

                  children: educationCards,
                ),
                smallScreen: Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: educationCards,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
