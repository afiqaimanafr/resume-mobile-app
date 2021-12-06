import 'package:afiq_resume/constants.dart';
import 'package:afiq_resume/models/course_model.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  List<CourseModel> course = [
    CourseModel(
      title: 'Software Engineering',
    ),
    CourseModel(
      title: 'Robotics',
    ),
    CourseModel(
      title: 'Digital Signal Processing',
    ),
    CourseModel(
      title: 'Industrial Automation',
    ),
    CourseModel(
      title: 'Biomedical Instrumentation',
    ),
    CourseModel(
      title: 'Control System',
    ),
    CourseModel(
      title: 'Embedded System Design',
    ),
    CourseModel(
      title: 'Power Electronics & Drives',
    ),
    CourseModel(
      title: 'Engineering Design',
    ),
  ];

  Widget buildTitle(String title) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: primaryFamilyFont,
          fontWeight: FontWeight.bold,
          color: kPrimaryLightColor,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget buildCard(CourseModel item) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryLightColor.withOpacity(0.2),
      ),
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            item.title,
            style: const TextStyle(
              color: kPrimaryLightColor,
              fontFamily: primaryFamilyFont,
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTitle('Courses Taken'),
            SizedBox(
              height: 150,
              child: ListView.separated(
                padding: const EdgeInsets.all(10),
                separatorBuilder: (context, _) => const SizedBox(
                  width: 10,
                ),
                itemCount: course.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final item = course[index];
                  return buildCard(item);
                },
              ),
            ),
            buildTitle('Academic Projects & Achievements'),
          ],
        ),
      ),
    );
  }
}
