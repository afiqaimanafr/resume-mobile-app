import 'package:afiq_resume/constants.dart';
import 'package:afiq_resume/models/experience_model.dart';
import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  List<ExperienceModel> experience = [
    ExperienceModel(
        title: 'title',
        subtitle: 'subtitle',
        image: 'assets/images/smartphone.png'),
    ExperienceModel(
        title: 'title',
        subtitle: 'subtitle',
        image: 'assets/images/web-programming.png'),
    ExperienceModel(
        title: 'title',
        subtitle: 'subtitle',
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
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: kPrimaryLightColor.withOpacity(0.2),
              child: ListTile(
                leading: Image.asset(item.image),
                title: Text(
                  item.title,
                  style: const TextStyle(
                    color: kPrimaryLightColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: primaryFamilyFont,
                  ),
                ),
                subtitle: Text(
                  item.subtitle,
                  style: const TextStyle(
                    color: kPrimaryLightColor,
                    fontFamily: secondaryFamilyFont,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
