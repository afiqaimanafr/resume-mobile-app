import 'package:afiq_resume/constants.dart';
import 'package:afiq_resume/models/experience_model.dart';
import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  List<ExperienceModel> experience = [
    ExperienceModel(
      title: 'Mobile Developer',
      subtitle: 'October 2021 - Present',
      image: 'assets/images/smartphone.png',
      firstDetail:
          'Developed mobile applications by utilizing Flutter and Dart',
    ),
    ExperienceModel(
      title: 'Web Developer Trainee',
      subtitle: 'July 2021 - September 2021',
      image: 'assets/images/web-programming.png',
      firstDetail:
          'Assisted in carrying out both frontend and backend development activities and harnessed an array of tools including HTML, CSS, JS, PHP and Laravel',
    ),
    ExperienceModel(
      title: 'Part-time Worker',
      subtitle: 'June 2019 - August 2019',
      image: 'assets/images/cooking.png',
      firstDetail:
          'Performed food preparation and cashiering activities in ensuring excellent customer service',
    ),
    ExperienceModel(
      title: 'Freelance Tutor',
      subtitle: 'June 2018 - Present',
      image: 'assets/images/tutor.png',
      firstDetail:
          'Tutored the subjects of Mathematics and Science to PT3 and SPM level students',
    ),
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
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
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
                              fontFamily: primaryFamilyFont,
                            ),
                          ),
                          Text(
                            item.subtitle,
                            style: const TextStyle(
                              color: kPrimaryLightColor,
                              fontFamily: primaryFamilyFont,
                            ),
                          ),
                          const Divider(
                            color: kPrimaryLightColor,
                          ),
                          Text(
                            item.firstDetail,
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
