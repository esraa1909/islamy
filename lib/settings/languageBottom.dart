import 'package:flutter/material.dart';
import 'package:islamy/provider/AddConfigProvider.dart';
import 'package:provider/provider.dart';

class LanguageBottom extends StatefulWidget {

  @override
  State<LanguageBottom> createState() => _LanguageBottomState();
}

class _LanguageBottomState extends State<LanguageBottom> {
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Container(

      child: Column(
        children: [

        InkWell(
          onTap: (){
            provider.changeLanguage('en');
          },
          child: provider.appLanguage=='en'?
            getSelectedItemWidged ("en"):
          getUnselectedItemWidged ("en"),



        ),
          InkWell(
            onTap: (){
              provider.changeLanguage('ar');


            },
              child: provider.appLanguage=='ar'?
              getSelectedItemWidged ("ar"):
              getUnselectedItemWidged ("ar"),

          )
        ],
      ),

    );
  }

  Widget getSelectedItemWidged( String text){

    return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

    Text(text,style: TextStyle(color:Theme.of(context).primaryColor,fontSize: 18),),
    Icon(Icons.check,color:Theme.of(context).primaryColor),
    ],
    ),
    );


  }
  Widget getUnselectedItemWidged( String text){

    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text(text,style: TextStyle(color:Theme.of(context).primaryColor,fontSize: 18),),
          Icon(Icons.check,color:Theme.of(context).primaryColor),
        ],
      ),
    );


  }
}
