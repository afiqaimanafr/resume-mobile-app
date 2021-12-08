import 'package:afiq_resume/constants.dart';
import 'package:afiq_resume/models/course_model.dart';
import 'package:afiq_resume/screens/education/data/course_data.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatefulWidget {
  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  late List<CourseModel> course;
  @override
  void initState() {
    super.initState();

    course = allCourses;
  }

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
              height: 100,
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
            SizedBox(
              height: 100,
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
          ],
        ),
      ),
    );
  }
}
