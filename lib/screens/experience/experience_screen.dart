import 'package:afiq_resume/constants.dart';
import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Text(
          'Experience Screen',
          style: TextStyle(color: kPrimaryLightColor),
        ),
      ),
    );
  }
}
