import 'package:flutter/material.dart';
import 'package:portfolioflutter/components/default_button.dart';
import 'package:portfolioflutter/components/my_outline_button.dart';
import '../../constants.dart';
import 'components/about_section_text.dart';
import 'components/about_text.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1080),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutText(),
              Expanded(
                child: AboutSectionText(
                    text:
                        "My reason for being as a Developer pushes me to always want to learn to give the best of myself to be able to work on all types of projects. I see myself as an empty shell that absorbs the objectives, knowledge and willpower that each project requires."),
              ),
              ExperienceCard(numOfExp: "01"),
              Expanded(
                child: AboutSectionText(
                    text:
                        "In order to be able to solve any problem that the project might face me. When I work on a new project, I assume that I don't know anything. It is by remaining humble with respect to my knowledge that I am more attentive to my mistakes, that I choose the most suitable solution and where I am the most efficient."),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire me !",
                press: () {},
              ),
              SizedBox(width: kDefaultPadding * 3),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
