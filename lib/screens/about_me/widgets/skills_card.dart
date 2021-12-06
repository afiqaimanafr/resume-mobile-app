import 'package:afiq_resume/constants.dart';
import 'package:flutter/material.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({Key? key}) : super(key: key);

  Widget buildLabelIndicator(String skill, String percentage) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            skill,
            style: const TextStyle(
              color: kPrimaryLightColor,
              fontFamily: primaryFamilyFont,
              fontSize: 17,
            ),
          ),
          Text(
            percentage,
            style: const TextStyle(
              color: kPrimaryLightColor,
              fontFamily: primaryFamilyFont,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProgressIndicator(double value, Color colour) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: value,
            valueColor: AlwaysStoppedAnimation(colour),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buildOtherSkills(String skill) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            skill,
            style: const TextStyle(
              fontFamily: secondaryFamilyFont,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 10,
        left: 10,
        right: 10,
      ),
      width: double.infinity,
      child: Card(
        color: Colors.white.withOpacity(0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 10.0,
                right: 10.0,
                bottom: 15.0,
              ),
              child: Text(
                'Skills',
                style: TextStyle(
                  color: kPrimaryLightColor,
                  fontFamily: primaryFamilyFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            buildLabelIndicator('Flutter', '60%'),
            buildProgressIndicator(0.6, Colors.blueAccent),
            buildLabelIndicator('Dart', '60%'),
            buildProgressIndicator(0.6, Colors.purple),
            buildLabelIndicator('HTML & CSS', '60%'),
            buildProgressIndicator(0.6, Colors.yellow),
            buildLabelIndicator('Laravel', '40%'),
            buildProgressIndicator(0.4, Colors.red),
            buildLabelIndicator('PHP', '40%'),
            buildProgressIndicator(0.4, Colors.green),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildOtherSkills('JavaScript'),
                  buildOtherSkills('Python'),
                  buildOtherSkills('C#'),
                  buildOtherSkills('C++'),
                  Expanded(
                    child: buildOtherSkills('Microsoft Office'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
