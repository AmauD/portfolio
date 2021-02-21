import 'package:flutter/material.dart';
import 'package:portfolioflutter/components/section_title.dart';
import 'package:portfolioflutter/models/Skills.dart';
import 'package:portfolioflutter/sections/skills/components/skill_card.dart';
import '../../../constants.dart';

class SkillSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1080),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "What I Like !",
            subTitle: "My Favorite Skills",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(skills.length, (index) => SkillCard(index: index,))
          ),
        ],
      ),
    );
  }
}