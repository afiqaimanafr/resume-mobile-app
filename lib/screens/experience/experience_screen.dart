import 'package:afiq_resume/constants.dart';
import 'package:afiq_resume/models/experience_model.dart';
import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  List<ExperienceModel> experience = [
    ExperienceModel(
        title: 'Mobile Developer',
        subtitle: 'October 2021 - Present',
        image: 'assets/images/smartphone.png'),
    ExperienceModel(
        title: 'Web Developer Trainee',
        subtitle: 'July 2021 - September 2021',
        image: 'assets/images/web-programming.png'),
    ExperienceModel(
        title: 'Part-time Worker',
        subtitle: 'June 2019 - August 2019',
        image: 'assets/images/cooking.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView.builder(
        itemCount: experience.length,
        itemBuilder: (ctx, index) {
          final item = experience[index];
          return Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            child: Card(
              color: Colors.white.withOpacity(0.2),
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(item.image),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            item.title,
                            style: const TextStyle(
                              color: kPrimaryLightColor,
                              fontFamily: secondaryFamilyFont,
                            ),
                          ),
                          Text(
                            item.subtitle,
                            style: const TextStyle(
                              color: kPrimaryLightColor,
                              fontFamily: secondaryFamilyFont,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
