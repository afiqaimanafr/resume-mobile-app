import 'package:afiq_resume/constants.dart';
import 'package:afiq_resume/screens/about_me_screen.dart';
import 'package:afiq_resume/screens/education_screen.dart';
import 'package:afiq_resume/screens/experience_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          title: const Text('Afiq Aiman'),
          backgroundColor: kPrimaryColor,
          bottom: const TabBar(
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              Tab(
                text: 'About Me',
                icon: Icon(Icons.person),
              ),
              Tab(
                text: 'Experience',
                icon: Icon(Icons.exposure),
              ),
              Tab(
                text: 'Education',
                icon: Icon(Icons.cast_for_education),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AboutMeScreen(),
            ExperienceScreen(),
            EducationScreen(),
          ],
        ),
      ),
    );
  }
}
