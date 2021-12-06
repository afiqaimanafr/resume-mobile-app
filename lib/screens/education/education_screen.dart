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

  Widget buildCard(CourseModel item) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryLightColor.withOpacity(0.2),
      ),
      width: 200,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              item.title,
              style: const TextStyle(
                color: kPrimaryLightColor,
                fontFamily: primaryFamilyFont,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        height: 100,
        child: ListView.separated(
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
    );
  }
}
