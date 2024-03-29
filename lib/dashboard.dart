import 'package:flutter/material.dart';
import 'package:tryft/screens/secondWIdget.dart';
import 'package:tryft/utils/theme.dart';
import 'package:tryft/utils/tryftSize.dart';
import 'package:tryft/screens/Thirdwidget.dart';
import 'package:tryft/screens/firstWidget.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height,
              width: TryftSize.xMargin(context, 22),
              color: backgroundColor,
              child: FirstWidget(),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: TryftSize.xMargin(context, 54),
              //color: Colors.white30,
              color: accentColor,
              child: SecondWidget(),
            ),
            Container(
                child: ThirdWidget(),
                height: MediaQuery.of(context).size.height,
                width: TryftSize.xMargin(context, 23),
                color: backgroundColor)
          ],
        ),
      ),
    );
  }
}
