import 'package:flutter/material.dart';
import 'package:islamy/provider/AddConfigProvider.dart';
import 'package:provider/provider.dart';

class ThemeBottom extends StatefulWidget {

  @override
  State<ThemeBottom> createState() => _ThemeBottomState();
}

class _ThemeBottomState extends State<ThemeBottom> {
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Container(

      child: Column(
        children: [

          InkWell(
            onTap: (){

              provider.changeTheme(ThemeMode.light);


            },
            child: provider.isDarkMode()?
            getUnselectedItemWidged ("light"):
              getSelectedItemWidged ("light"),



          ),
          InkWell(
            onTap: (){

              provider.changeTheme(ThemeMode.dark);

            },
            child: provider.isDarkMode()?
            getSelectedItemWidged ("dark"):
            getUnselectedItemWidged ("dark"),

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
