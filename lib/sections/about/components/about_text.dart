import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    Key key, String numOfExp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment : CrossAxisAlignment.start,
      children: [
        Text("About \nmy story",
        style: Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: kDefaultPadding * 2),
      ],
    );
  }
}