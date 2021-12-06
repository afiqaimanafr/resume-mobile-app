import 'package:afiq_resume/constants.dart';
import 'package:afiq_resume/models/experience_model.dart';
import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  List<ExperienceModel> experience = [
    ExperienceModel(
      title: 'title',
      subtitle: 'subtitle',
      icons: const Icon(Icons.ac_unit),
    ),
    ExperienceModel(
      title: 'title',
      subtitle: 'subtitle',
      icons: const Icon(Icons.ac_unit),
    ),
    ExperienceModel(
      title: 'title',
      subtitle: 'subtitle',
      icons: const Icon(Icons.ac_unit),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView.builder(
        itemCount: experience.length,
        itemBuilder: (ctx, index) {
          final item = experience[index];
          return Card(
            child: ListTile(
              leading: item.icons,
              title: Text(item.title),
              subtitle: Text(item.subtitle),
            ),
          );
        },
      ),
    );
  }
}
