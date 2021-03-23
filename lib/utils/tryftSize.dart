import 'package:flutter/material.dart';

//A custom class for handling text size, margin szie and other responsiveness related issues
class TryftSize {
  // static keyword included so you can call this method without instantiating an object of it like so :
  // Config.yMargin(context, 2)
  static double yMargin(BuildContext context, double height) {
    double screenHeight = MediaQuery.of(context).size.height / 100;
    return height * screenHeight;
  }

  // static keyword included so you can call this method without instantiating an object of it like so :
  // Config.xMargin(context, 2)
  static double xMargin(BuildContext context, double width) {
    double screenWidth = MediaQuery.of(context).size.width / 100;
    return width * screenWidth;
  }

  // static keyword included so you can call this method without instantiating an object of it like so :
  // Config.textSize(context, 2)
  static double textSize(BuildContext context, double textSize) {
    double screenWidth = MediaQuery.of(context).size.width / 100;
    return textSize * screenWidth;
  }
}
