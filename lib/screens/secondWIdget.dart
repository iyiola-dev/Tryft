import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tryft/utils/theme.dart';
import 'package:tryft/utils/tryftSize.dart';
import 'package:tryft/utils/widgets/tiles.dart';

class SecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dashboard',
                style: GoogleFonts.ubuntu(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Wrap(
                children: [
                  Text(
                    '\n14 Aug 2020, Thursday',
                    style: GoogleFonts.ubuntu(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: fadedPrimary,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.search,
                      color: buttonColor,
                    )),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: TryftSize.yMargin(context, 25),
            decoration: BoxDecoration(
                color: tileButtonColor,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    Text(
                      'Welcome back, Emmanuel!',
                      style: GoogleFonts.ubuntu(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: dialogBackgroundColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'You’ve learnt 80% of your goals this week!\nKeep it up and improve your results!')
                  ],
                ),
                Image.asset('images/serious.png')
              ],
            ),
          ),
          SizedBox(
            height: TryftSize.yMargin(context, 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Courses',
                style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
              ),
              Row(children: [
                Text('view more',
                    style: GoogleFonts.ubuntu(color: Colors.grey)),
                Icon(
                  Icons.arrow_right_alt,
                  color: Colors.grey,
                ),
              ])
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 90,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SlimTile(
                  cardColor: buttonColor,
                  title: 'Practical Physics',
                  subtitle: 'Motion',
                ),
                SizedBox(
                  width: 10,
                ),
                SlimTile(
                  cardColor: cardColor,
                  title: 'Business English',
                  subtitle: 'Grammar',
                ),
                SizedBox(
                  width: 10,
                ),
                SlimTile(
                  cardColor: tileColor,
                  title: 'Spanish',
                  subtitle: 'Vocabulary',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
