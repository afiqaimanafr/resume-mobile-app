import 'package:afiq_resume/constants.dart';
import 'package:afiq_resume/models/course_model.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  List<CourseModel> course = [
    CourseModel(
      title: 'Software Engineering',
    ),
    CourseModel(
      title: 'Software Engineering',
    ),
    CourseModel(
      title: 'Software Engineering',
    ),
    CourseModel(
      title: 'Software Engineering',
    ),
    CourseModel(
      title: 'Software Engineering',
    ),
    CourseModel(
      title: 'Software Engineering',
    ),
    CourseModel(
      title: 'Software Engineering',
    ),
    CourseModel(
      title: 'Software Engineering',
    ),
    CourseModel(
      title: 'Software Engineering',
    ),
  ];

  Widget buildCard(CourseModel item) {
    return Container(
      height: 200,
      width: 200,
      color: kPrimaryLightColor.withOpacity(0.2),
      child: Center(
        child: Text(
          item.title,
          style: const TextStyle(
            color: kPrimaryLightColor,
            fontFamily: primaryFamilyFont,
            fontSize: 20,
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
        height: 200,
        child: ListView.separated(
          separatorBuilder: (context, _) => const SizedBox(
            width: 12,
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
