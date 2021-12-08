import 'package:afiq_resume/constants.dart';
import 'package:afiq_resume/models/course_model.dart';
import 'package:afiq_resume/models/extracurricular_model.dart';
import 'package:afiq_resume/models/projects_and_achievements_model.dart';
import 'package:afiq_resume/screens/education/data/course_data.dart';
import 'package:afiq_resume/screens/education/data/extracurricular_data.dart';
import 'package:afiq_resume/screens/education/data/projects_and_achievements_data.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatefulWidget {
  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  late List<CourseModel> course;
  late List<ProjectsAndAchievementsModel> projects;
  late List<ExtracurricularModel> extras;

  @override
  void initState() {
    super.initState();
    course = allCourses;
    projects = allProjects;
    extras = allExtra;
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

  Widget buildProjectsCard(ProjectsAndAchievementsModel item) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryLightColor.withOpacity(0.2),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(item.image),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                item.title,
                style: const TextStyle(
                  color: kPrimaryLightColor,
                  fontFamily: primaryFamilyFont,
                  fontSize: 17,
                ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                maxLines: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildExtrasCard(ExtracurricularModel item) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryLightColor.withOpacity(0.2),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(item.image),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                item.title,
                style: const TextStyle(
                  color: kPrimaryLightColor,
                  fontFamily: primaryFamilyFont,
                  fontSize: 17,
                ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                maxLines: 10,
              ),
            ),
          ),
        ],
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
              height: 280,
              child: ListView.separated(
                padding: const EdgeInsets.all(10),
                separatorBuilder: (context, _) => const SizedBox(
                  width: 10,
                ),
                itemCount: projects.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final item = projects[index];
                  return buildProjectsCard(item);
                },
              ),
            ),
            buildTitle('Extracurricular Involvement'),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: false,
              itemCount: extras.length,
              itemBuilder: (ctx, index) {
                final item = extras[index];
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
                                  item.year,
                                  style: const TextStyle(
                                    color: kPrimaryLightColor,
                                    fontFamily: primaryFamilyFont,
                                  ),
                                ),
                                const Divider(
                                  color: kPrimaryLightColor,
                                ),
                                Text(
                                  item.title,
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
          ],
        ),
      ),
    );
  }
}
