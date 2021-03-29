import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';
import '../tryftSize.dart';

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

class SlimTile extends StatelessWidget {
  Color cardColor;
  String title;
  String subtitle;
  SlimTile({this.cardColor, this.title, this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: TryftSize.xMargin(context, 22),
      height: 10,
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: fadedWhite,
            ),
            child: Center(
              child: Text(
                'A1',
                style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Wrap(
            direction: Axis.vertical,
            children: [
              Text(title,
                  style: TextStyle(
                    color: fadedWhite,
                  )),
              SizedBox(
                height: 7,
              ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            SizedBox(
              height: 17,
            ),
          ])
        ],
      ),
    );
  }
}
