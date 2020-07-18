import 'package:flutter/material.dart';

import '../constants.dart';
import 'reusable_card.dart';
import 'training_card.dart';

class TrainingInfo extends StatelessWidget {
  TrainingInfo({
    Key key,
  }) : super(key: key);

  final List<Widget> trainingCards = [
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: TrainingCard(
        title: 'Flutter Developer',
        organisation: 'IndiaNIC Infotech Limited',
        year: 'Fab 2020 - Present',
        techStack: 'Dart, Flutter, Firebase',
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: TrainingCard(
        title: 'Android/Flutter Developer',
        organisation: 'Vnurture Technology',
        year: 'Sep 2017 - Fab 2020',
        techStack: 'Java, Kotlin, MySQL, Flutter',
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: TrainingCard(
        title: 'Learn Flutter',
        organisation: 'Udemy',
        year: '2019',
        techStack: 'Flutter',
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
                'Experience and Certification',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: trainingCards,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
