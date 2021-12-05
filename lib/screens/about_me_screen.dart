import 'package:afiq_resume/constants.dart';
import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  Widget buildText(Icon icons, String text) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
      ),
      child: Row(
        children: <Widget>[
          icons,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Text(
                text,
                maxLines: 3,
                style: const TextStyle(
                  color: kPrimaryLightColor,
                  fontFamily: secondaryFamilyFont,
                ),
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
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Card(
                color: Colors.white.withOpacity(0.2),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'assets/images/afiq.png',
                                height: 100,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.person,
                                    color: kPrimaryLightColor,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 10.0,
                                        left: 8.0,
                                      ),
                                      child: Text(
                                        'Afiq Aiman Bin Ahmad Fairuz Rizal',
                                        maxLines: 3,
                                        style: TextStyle(
                                          color: kPrimaryLightColor,
                                          fontFamily: secondaryFamilyFont,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              buildText(
                                  const Icon(
                                    Icons.today,
                                    color: kPrimaryLightColor,
                                  ),
                                  '23'),
                              buildText(
                                  const Icon(
                                    Icons.home,
                                    color: kPrimaryLightColor,
                                  ),
                                  'Kajang, Selangor'),
                              buildText(
                                  const Icon(
                                    Icons.alternate_email,
                                    color: kPrimaryLightColor,
                                  ),
                                  'aaafr98@gmail.com'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: kPrimaryLightColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/email.png',
                            height: 30,
                            color: kPrimaryLightColor,
                          ),
                          Image.asset(
                            'assets/images/linkedin.png',
                            height: 30,
                            color: kPrimaryLightColor,
                          ),
                          Image.asset(
                            'assets/images/github.png',
                            height: 30,
                            color: kPrimaryLightColor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
