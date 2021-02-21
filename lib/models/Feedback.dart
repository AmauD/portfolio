import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

List<Feedback> feedback = [
  Feedback(
    id: 1,
    name: 'Amaury Deltenre',
    review: review, 
    userPic: "assets/images/people.png",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: 'Amaury Deltenre',
    review: review, 
    userPic: "assets/images/people.png",
    color: Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: 'Amaury Deltenre',
    review: review, 
    userPic: "assets/images/people.png",
    color: Color(0xFFFFE0E0),
  ),
];

String review = 'lalalalalalalalalalalalalalalallalalalalalalalal';