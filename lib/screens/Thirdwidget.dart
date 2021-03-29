import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tryft/utils/theme.dart';
import 'package:tryft/utils/tryftSize.dart';
import 'package:tryft/utils/widgets/tiles.dart';

class ThirdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
              trailing: Container(
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: topButtonColor,
            ),
            child: Center(
              child: Text(
                'Logout',
                style: GoogleFonts.ubuntu(color: Colors.grey),
              ),
            ),
          )),
          SizedBox(height: 30),
          Container(
              child: Stack(children: [
            CircleAvatar(
              radius: 60,
              child: Image.asset('images/background.png'),
            ),
            Positioned(
                left: 92, top: 85.6, child: Image.asset("images/plus.png")),
          ])
              //Icon(Icons.add),
              ),
          SizedBox(
            height: 10,
          ),
          Text('Emmanuel Chukwu',
              style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
          ),
          Text(
            '100l',
            style: GoogleFonts.ubuntu(color: Colors.grey),
          ),
          SizedBox(
            height: TryftSize.yMargin(context, 7),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Result',
              style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Tiles(
              trailing: SizedBox(
                width: 20,
                child: LinearPercentIndicator(
                  width: 100.0,
                  lineHeight: 8.0,
                  percent: 0.8,
                  progressColor: buttonColor,
                ),
              ),
              subtitle: 'High Intermediate',
              title: 'Igbo',
              headWidget: Text(
                'A1',
                style: GoogleFonts.ubuntu(
                    fontSize: 10, fontWeight: FontWeight.bold),
              ),
              headColor: headTilesColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Tiles(
              trailing: SizedBox(
                width: 20,
                child: LinearPercentIndicator(
                  width: 100.0,
                  lineHeight: 8.0,
                  percent: 0.7,
                  progressColor: buttonColor,
                ),
              ),
              subtitle: 'Advanced',
              title: 'Yoruba         ',
              headWidget: Text(
                'B3',
                style: GoogleFonts.ubuntu(
                    fontSize: 10, fontWeight: FontWeight.bold),
              ),
              headColor: headTilesColor,
            ),
          ),
          SizedBox(
            height: TryftSize.yMargin(context, 7.5),
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Remainder',
                    style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    )),
                Image.asset('images/bell.png')
              ],
            ),
          ),
          SizedBox(
            height: TryftSize.yMargin(context, 3),
          ),
          SizedBox(
            height: TryftSize.yMargin(context, 30),
            child: Scrollbar(
                isAlwaysShown: true,
                controller: controller,
                child: ListView(
                  controller: controller,
                  children: [
                    RowTiles(
                      headerColor: tileButtonColor,
                      icon: Icons.info_outline_rounded,
                      iconColor: Colors.red,
                      title: 'Mth- Class quiz',
                      subtitle: '14 Aug 2020, Thursday',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RowTiles(
                      headerColor: secondaryTileButtonColor,
                      icon: Icons.email_outlined,
                      iconColor: Color(0xff7592F5),
                      title: 'Eng- Vocabulary test',
                      subtitle: '14 Aug 2020, Thursday',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RowTiles(
                      headerColor: fadedTileColor,
                      icon: Icons.email_outlined,
                      iconColor: Color(0xff7592F5),
                      title: 'Spanish- Word buzz',
                      subtitle: '14 Aug 2020, Thursday',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RowTiles(
                      headerColor: fadedGreen,
                      icon: Icons.email_outlined,
                      iconColor: Colors.green,
                      title: 'Physics- Motion test',
                      subtitle: '14 Aug 2020, Thursday',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RowTiles(
                      headerColor: secondaryTileButtonColor,
                      icon: Icons.email_outlined,
                      iconColor: Color(0xff7592F5),
                      title: 'Eng- Vocabulary test',
                      subtitle: '14 Aug 2020, Thursday',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RowTiles(
                      headerColor: secondaryTileButtonColor,
                      icon: Icons.email_outlined,
                      iconColor: Color(0xff7592F5),
                      title: 'Eng- Vocabulary test',
                      subtitle: '14 Aug 2020, Thursday',
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
