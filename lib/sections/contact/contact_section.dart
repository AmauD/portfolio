import 'package:flutter/material.dart';
import 'package:portfolioflutter/components/default_button.dart';
import 'package:portfolioflutter/components/section_title.dart';
import '../../constants.dart';
import 'components/social_card.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFE8F0F9),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/bg_img_2.png"),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: kDefaultPadding * 2.5),
            SectionTitle(
              title: "Contact me !",
              subTitle: "For any information",
              color: Color(0xFF07E34A),
            ),
            ContactBox(),
          ],
        ));
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1080),
      margin: EdgeInsets.only(top: kDefaultPadding * 2.5),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                iconSrc: "assets/images/gmail.png",
                name: "amaury.deltenre@gmail.com",
                color: Color(0xFFFFEBEE),
                press: () {},
              ),
              SocialCard(
                iconSrc: "assets/images/linkedin.jpg",
                name: "Amaury Deltenre",
                color: Color(0xFFD9FFFC),
                press: () {},
              ),
              SocialCard(
                iconSrc: "assets/images/github.png",
                name: "https://github.com/AmauD",
                color: Color(0xFFE8F0D9),
                press: () {},
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 400,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          SizedBox(
            width: 400,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "What can I do for you ?",
                hintText: "Write your message",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
            Center(
              child: FittedBox(
                child: DefaultButton(
                  imageSrc: "assets/images/contact_icon.png",
                  text: "Contact me !",
                  press: () {},
                ),
              ),
            ),
        ],
      ),
    );
  }
}