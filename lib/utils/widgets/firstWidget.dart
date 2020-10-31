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
        )
      ],
    );
  }
}
