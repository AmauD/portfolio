import 'package:flutter/material.dart';
import 'package:portfolioflutter/sections/about/about_section.dart';
import 'package:portfolioflutter/sections/contact/contact_section.dart';
import 'package:portfolioflutter/sections/skills/components/skill_section.dart';
import 'package:portfolioflutter/sections/topSection/top_section.dart';
import 'package:portfolioflutter/sections/work/work_section.dart';
import 'constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            SkillSection(),
            WorkSection(),
            SizedBox(height: kDefaultPadding* 4),
            ContactSection(),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
