import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tiles extends StatelessWidget {
  Widget headWidget;
  Color headColor;
  String title;
  Tiles({this.headWidget, this.headColor, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: headColor,
          ),
          child: Center(child: headWidget),
        ),
        title: Text(
          title,
          style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
