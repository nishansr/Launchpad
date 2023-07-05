import 'package:flutter/material.dart';

import 'screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Launchpad App',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: SafeArea(
          child: Homepage(),
        ));
  }
}
