import 'package:flutter/material.dart';
import 'package:tryft/utils/config.dart';
import 'package:tryft/utils/theme.dart';
import 'package:tryft/utils/widgets/Thirdwidget.dart';
import 'package:tryft/utils/widgets/firstWidget.dart';

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
              width: Config.xMargin(context, 22),
              color: Theme.of(context).backgroundColor,
              child: FirstWidget(),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: Config.xMargin(context, 54),
              //color: Colors.white30,
              color: Theme.of(context).accentColor,
            ),
            Container(
                child: ThirdWidget(),
                height: MediaQuery.of(context).size.height,
                width: Config.xMargin(context, 23),
                color: Theme.of(context).backgroundColor)
          ],
        ),
      ),
    );
  }
}
