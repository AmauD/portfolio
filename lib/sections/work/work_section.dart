import 'package:flutter/material.dart';
import 'package:portfolioflutter/components/section_title.dart';
import 'package:portfolioflutter/constants.dart';
import 'package:portfolioflutter/models/RecentWork.dart';

import 'components/work_card.dart';

class WorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/recent_work_bg.png",
          ),
        ),
      ),
      
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2),
          SectionTitle(
            title: "Recent Works",
            subTitle: "My Favorite Skills",
            color: Color(0xFFFFB100),
            
          ),
          SizedBox(height: kDefaultPadding * 2),
          SizedBox(
            width: 1080,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                recentWorks.length, (index) => RecentWorkCard(index: index, press: () {}
                ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}