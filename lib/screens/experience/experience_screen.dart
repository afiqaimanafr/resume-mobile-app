import 'package:afiq_resume/constants.dart';
import 'package:afiq_resume/models/experience_model.dart';
import 'package:afiq_resume/screens/experience/data/experience_data.dart';
import 'package:flutter/material.dart';

class ExperienceScreen extends StatefulWidget {
  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  late List<ExperienceModel> experience;

  @override
  void initState() {
    super.initState();
    experience = allExperience;
  }

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
