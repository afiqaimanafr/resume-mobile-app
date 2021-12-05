import 'package:afiq_resume/constants.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text('Afiq Aiman'),
        backgroundColor: kPrimaryColor,
      ),
      body: const Center(
        child: Text(
          'Tabs Screen!',
          style: TextStyle(
            color: kPrimaryLightColor,
          ),
        ),
      ),
    );
  }
}
