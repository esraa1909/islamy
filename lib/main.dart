import 'package:flutter/material.dart';
import 'package:islamy/quran/suraDetails.dart';

import 'hadeth/hadethDetails.dart';
import 'home.dart';

void main() {
  runApp( MyApp());
}

class MyThemeData{
  static const Color PrimaryColorD = Color.fromARGB(255, 21, 27, 49);

  static const Color PrimaryColor = Color.fromARGB(255, 183, 147, 95);
  static final ThemeData LightTheme= ThemeData(primaryColor: MyThemeData.PrimaryColorD,
      scaffoldBackgroundColor: Colors.transparent,

      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme:IconThemeData(color: Colors.black),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 33)
      ),


    bottomNavigationBarTheme: BottomNavigationBarThemeData(selectedItemColor: Colors.black,
    unselectedItemColor: Colors.white)

  );
  static final ThemeData DarkTheme= ThemeData(primaryColor: MyThemeData.PrimaryColor,
      scaffoldBackgroundColor: Colors.transparent,

      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 30)
      ),


  );

}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'islamy',

      theme:MyThemeData.LightTheme ,
      darkTheme: MyThemeData.DarkTheme,
      routes: {
        HomeScreen.routeName:(BuildContext context)=>HomeScreen(),
        SuraDetials.routeName:(BuildContext context)=>SuraDetials(),
        HadethDetails.routeName:(BuildContext context)=>HadethDetails(),

      },
      initialRoute: HomeScreen.routeName,

    );
  }
}
