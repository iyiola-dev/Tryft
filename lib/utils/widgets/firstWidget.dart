import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tryft/utils/config.dart';

class FirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/logo.png"),
            Text("TRYFT",
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold,
                    fontSize: Config.textSize(context, 1.9)))
          ],
        ),
        SizedBox(
          height: Config.yMargin(context, 10),
        ),
        Container(
            padding: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).accentColor,
                shape: BoxShape.rectangle),
            height: Config.yMargin(context, 6),
            child: ListTile(
                dense: true,
                leading: Image.asset('images/card.png'),
                title: Text('Dashboard', style: GoogleFonts.ubuntu()))),
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Image.asset('images/classes.png'),
          title: Text('classes', style: GoogleFonts.ubuntu()),
        ),
        ListTile(
            leading: Image.asset('images/briefcase.png'),
            title: Text('Resources', style: GoogleFonts.ubuntu())),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text('Learning Plan', style: GoogleFonts.ubuntu(fontSize: 15)),
        ),
        ListTile(
          leading: Image.asset('images/chats.png'),
          title: Text('Chat', style: GoogleFonts.ubuntu()),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings', style: GoogleFonts.ubuntu()),
        )
      ],
    );
  }
}
