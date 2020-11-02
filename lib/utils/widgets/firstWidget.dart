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
          dense: true,
          leading: Image.asset('images/classes.png'),
          title: Text('classes', style: GoogleFonts.ubuntu()),
        ),
        ListTile(
            dense: true,
            leading: Image.asset('images/briefcase.png'),
            title: Text('Resources', style: GoogleFonts.ubuntu())),
        ListTile(
          dense: true,
          leading: Icon(Icons.calendar_today),
          title: Text('Learning Plan', style: GoogleFonts.ubuntu()),
        ),
        ListTile(
          dense: true,
          leading: Image.asset('images/chats.png'),
          title: Text('Chat', style: GoogleFonts.ubuntu()),
        ),
        ListTile(
          dense: true,
          leading: Icon(Icons.settings),
          title: Text('Settings', style: GoogleFonts.ubuntu()),
        ),
        SizedBox(
          height: Config.yMargin(context, 6),
        ),
        Container(
          height: Config.yMargin(context, 26),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    height: Config.yMargin(context, 22),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).accentColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Upgrade to',
                              style: GoogleFonts.ubuntu(
                                  color: Colors.grey, fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('PRO',
                                style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.bold, fontSize: 12)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'for ',
                              style: GoogleFonts.ubuntu(
                                  color: Colors.grey, fontSize: 12),
                            )
                          ],
                        ),
                        Text(
                          'more resources',
                          style: GoogleFonts.ubuntu(
                              color: Colors.grey, fontSize: 12),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text('Upgrade'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: Config.yMargin(context, 8),
                child: Center(
                    child:
                        Image.asset('images/card2.png', fit: BoxFit.contain)),
              )
            ],
          ),
        )
      ],
    );
  }
}
