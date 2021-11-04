import 'package:flutter/material.dart';
import 'package:islamy/quran/suraDetails.dart';

class SuraName extends StatelessWidget {

  String suraName;
  int index;

  SuraName(this.suraName,this.index);

  Widget build(BuildContext context) {
    return Container(

      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context,SuraDetials.routeName,arguments: SuraDetailsArgs(suraName, index));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(suraName,style: TextStyle(fontSize: 24), textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}
