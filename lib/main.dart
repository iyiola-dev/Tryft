import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tryft/dashboard.dart';
import 'package:tryft/utils/theme.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('TRYFT');
    setWindowMinSize(const Size(950, 700));
    setWindowMaxSize(Size(2000, 1000));
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: Dashboard());
  }
}
