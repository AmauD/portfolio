import 'package:flutter/material.dart';

import '../../../constants.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoveredIndex = 0;
  List<String> menuItems = [
    "Home",
    "About",
    "Portfolio",
    "Testimonial",
    "Contact"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1080),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
            boxShadow: [kDefaultShadow],
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItem(index),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
    onTap: () {
      setState(() {
        selectedIndex = index;
      });
    },

    onHover: (value) {
      setState(() {
        value ? hoveredIndex = index : hoveredIndex = selectedIndex;
      });
    },
      child: Container(
    constraints: BoxConstraints(minWidth: 122),
    height: 100,

      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(menuItems[index],
          style: TextStyle(
            fontSize: 20,
            color: kTextColor,
          ),
          ),

          // Hover
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            left: 0,
            right: 0,
            bottom: selectedIndex != index && hoveredIndex == index ? -20 : -32,
            child: Image.asset("assets/images/hover.png"),
          ),
          // Select
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            left: 0,
            right: 0,
            bottom: selectedIndex == index ? -2 : -32,
            child: Image.asset("assets/images/hover.png"),
          ),
        ],
      ),
    ),
  );
}
