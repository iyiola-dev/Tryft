import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tryft/utils/theme.dart';
import 'package:tryft/utils/widgets/tiles.dart';

class ThirdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: accentColor,
            ),
            child: ElevatedButton(
              onPressed: null,
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
              left: 92,
              top: 85.6,
              child: CircleAvatar(
                maxRadius: 10,
                backgroundColor: Theme.of(context).cardColor,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
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
            height: 30,
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
              title: 'Igbo',
              headWidget: Text(
                'A1',
                style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
              ),
              headColor: Color(0x1AC4C4C4),
            ),
          )
        ],
      ),
    );
  }
}
