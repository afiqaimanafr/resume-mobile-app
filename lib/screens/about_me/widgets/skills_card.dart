import 'package:afiq_resume/constants.dart';
import 'package:flutter/material.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 10,
        left: 10,
        right: 10,
      ),
      height: 500,
      width: double.infinity,
      child: Card(
        color: Colors.white.withOpacity(0.2),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Skills',
                  style: TextStyle(
                    color: kPrimaryLightColor,
                    fontFamily: primaryFamilyFont,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Flutter',
                      style: TextStyle(
                        color: kPrimaryLightColor,
                        fontFamily: primaryFamilyFont,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '50%',
                      style: TextStyle(
                        color: kPrimaryLightColor,
                        fontFamily: primaryFamilyFont,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: const LinearProgressIndicator(
                      value: 0.5,
                      valueColor: AlwaysStoppedAnimation(Colors.purple),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
