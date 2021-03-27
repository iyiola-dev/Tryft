import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tiles extends StatelessWidget {
  Widget headWidget;
  Color headColor;
  String title;
  String subtitle;
  Widget trailing;
  Tiles(
      {this.headWidget,
      this.headColor,
      this.title,
      this.subtitle,
      this.trailing});
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: headColor,
            ),
            child: Center(child: headWidget),
          ),
          Wrap(direction: Axis.vertical, children: [
            Text(
              title,
              style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
            ),
            Text(
              subtitle,
              style: GoogleFonts.ubuntu(fontSize: 9.5, color: Colors.grey),
            ),
          ]),
          Expanded(child: trailing),
        ]);
  }
}

class RowTiles extends StatelessWidget {
  Color headerColor;
  IconData icon;
  Color iconColor;
  String title;
  String subtitle;
  RowTiles(
      {this.headerColor, this.icon, this.iconColor, this.subtitle, this.title});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: headerColor,
        ),
        child: Center(
            child: Icon(
          icon,
          color: iconColor,
        )),
      ),
      title: Text(
        title,
        style: GoogleFonts.ubuntu(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.ubuntu(fontSize: 9.5, color: Colors.grey),
      ),
    );
  }
}
