import 'package:flutter/material.dart';

const Color kPrimaryColor = Color.fromRGBO(66, 134, 245, 1);
const Color kBackgroundColor = Colors.white;
const Color kPrimaryDarkColor = Color.fromRGBO(16, 30, 37, 1);
const Color kTextColor = Color.fromRGBO(91, 91, 91, 1);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;
