import 'package:flutter/material.dart';
import 'package:islamy/provider/AddConfigProvider.dart';
import 'package:islamy/settings/languageBottom.dart';
import 'package:islamy/settings/themeBottomSheet.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    return Container(
      padding: EdgeInsets.all(15),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Container(
            margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              child: Text('language',style:TextStyle(fontSize:22))),
          InkWell(
            onTap: () {
              showLanguage();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(provider.appLanguage=='en'?'English':'العربيه'),
                    Icon(Icons.arrow_drop_down_sharp)
                  ]

              ),


            ),
          ),
          Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              child: Text('Mode',style:TextStyle(fontSize:22))),
          InkWell(
            onTap: () {
              showTheme();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(provider.appTheme==ThemeMode.light?"light":"dark"),
                    Icon(Icons.arrow_drop_down_sharp)
                  ]

              ),


            ),
          )
        ],
      ),
    );
  }



    void showLanguage() {

    showModalBottomSheet(context: context, builder: (buildContext){
      return LanguageBottom();

    });

    }
  void showTheme() {

    showModalBottomSheet(context: context, builder: (buildContext){
      return (ThemeBottom()
      );

    });

  }
}


