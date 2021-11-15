import 'package:flutter/material.dart';
import 'package:islamy/provider/AddConfigProvider.dart';
import 'package:islamy/quran/suraDetails.dart';
import 'package:provider/provider.dart';
import 'hadeth/hadethDetails.dart';
import 'home.dart';


void main() {
  runApp( ChangeNotifierProvider(
    create:(buildContext){
      return AppConfigProvider();

    },
      child: MyApp()));
}

class MyThemeData{
  static const Color PrimaryColorD = Color.fromARGB(255, 21, 27, 49);

  static const Color PrimaryColor = Color.fromARGB(255, 183, 147, 95);
  static const Color accentColorD = Color.fromARGB(255, 250, 204, 29);

  static final ThemeData LightTheme= ThemeData(primaryColor: MyThemeData.PrimaryColorD,
      primaryTextTheme:TextTheme(

          headline1:TextStyle(

            color:Colors.black,
          ),
          headline2:TextStyle(

            color:Colors.black,
            fontSize: 24,
          ),
          headline3:TextStyle(

            color:Colors.black,
          )


      ),



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
      primaryTextTheme:TextTheme(

          headline1:TextStyle(

            color:Colors.white,
          ),
          headline2:TextStyle(

            color:Colors.white,
            fontSize: 24,
          ),
          headline3:TextStyle(

            color:Colors.white,
          )


      ),

      scaffoldBackgroundColor: Colors.transparent,

      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 30)
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(selectedItemColor:MyThemeData.accentColorD,
          unselectedItemColor: Colors.white)



  );

}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context)
  {

    var provider=Provider.of<AppConfigProvider>(context);
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'islamy',


     themeMode: provider.appTheme,
      theme:MyThemeData.LightTheme ,
      darkTheme: MyThemeData.DarkTheme,
      locale:Locale(provider.appLanguage),
      routes: {
        HomeScreen.routeName:(BuildContext context)=>HomeScreen(),
        SuraDetials.routeName:(BuildContext context)=>SuraDetials(),
        HadethDetails.routeName:(BuildContext context)=>HadethDetails(),

      },
      initialRoute: HomeScreen.routeName,

    );
  }
}
