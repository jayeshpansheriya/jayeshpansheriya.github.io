import 'package:flutter/material.dart';

import '../constants.dart';
import 'project_card.dart';
import 'reusable_card.dart';

class ProjectsInfo extends StatelessWidget {
  ProjectsInfo({
    Key key,
  }) : super(key: key);

  final List<Widget> projectCards = [
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: ProjectCard(
        projectTitle: 'Literature Sharing for VI',
        subTitle: 'Music App',
        projectDescription:
        'Literature Sharing for VI made for blind people, it one types of audio books application show chapters of book in ascending or descending order,\n- Download chapter,\n- Play and download audio file.',
        year: '2017',
        techStack: 'Android(Java), Firebase',
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: ProjectCard(
        projectTitle: 'GateFresh',
        subTitle: 'Food App',
        projectDescription:
            'Consumers: The app will allow consumers to order food at the airports. This will enable them to pre-order food from their favorite outlet inside the airport.\nFood Vendors: The app will allow the vendors to receive food orders and track the workflow in real time.',
        year: '2018',
        techStack: 'Android(Java), FCM',
      ),
    ),

    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: ProjectCard(
        projectTitle: 'Deep Derm',
        subTitle: 'Machine Learning',
        projectDescription:
            'This machine learning enabled application allows user to scan the images of skin and offer a prediction about disease and potential remedy as well.\nThis will further validated by Dermatologist.',
        year: '2019',
        techStack: 'Flutter',
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: ProjectCard(
        projectTitle: 'JSBN Book',
        subTitle: 'QR Scanner',
        projectDescription:
        'Scan QR code and get all book data, and store it to offline uses.',
        year: '2019',
        techStack: 'Flutter',
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: ProjectCard(
        projectTitle: 'Kolhapur Pathshala',
        subTitle: 'Education App',
        projectDescription:
        'E- School App,\n- attendance,\n- Study Progress,\n- Event Registration,\n- Gallary.',
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
                'Projects',
                style: kTitleTextStyle,
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
                children: projectCards,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
