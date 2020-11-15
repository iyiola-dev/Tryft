import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        ListTile(
            trailing: Container(
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).accentColor,
          ),
          child: FlatButton(
            onPressed: null,
            child: Text(
              'Logout',
              style: GoogleFonts.ubuntu(color: Colors.grey),
            ),
          ),
        )),
        SizedBox(height: 30),
        Container(
            child: CircleAvatar(
          child: Image.asset('images/background.png'),
        )
            //Icon(Icons.add),
            )
      ],
    );
  }
}
