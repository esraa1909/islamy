import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {


  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'islamy',
      routes: {
        HomeScreen.routeName:(BuildContext context)=>HomeScreen(),

      },
      initialRoute: HomeScreen.routeName,

    );
  }
}
