import 'package:afiq_resume/constants.dart';
import 'package:afiq_resume/screens/about_me_screen.dart';
import 'package:afiq_resume/screens/education_screen.dart';
import 'package:afiq_resume/screens/experience_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Afiq Aiman',
          style: TextStyle(fontFamily: primaryFamilyFont),
        ),
        backgroundColor: kPrimaryColor,
        bottom: TabBar(
          indicatorColor: Colors.white,
          labelStyle: const TextStyle(
            fontFamily: secondaryFamilyFont,
          ),
          controller: controller,
          tabs: const [
            Tab(
              text: 'About Me',
              icon: Icon(Icons.account_circle_outlined),
            ),
            Tab(
              text: 'Experience',
              icon: Icon(Icons.assignment_outlined),
            ),
            Tab(
              text: 'Education',
              icon: Icon(Icons.school_outlined),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          AboutMeScreen(),
          ExperienceScreen(),
          EducationScreen(),
        ],
      ),
    );
  }
}
