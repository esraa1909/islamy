import 'package:flutter/material.dart';
import 'package:islamy/hadeth/hadeth.dart';
import 'package:islamy/hadeth/hadethDetails.dart';

class HadethName extends StatelessWidget {

  HadethItem item;
  HadethName(this.item);


  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        Navigator.pushNamed(context, HadethDetails.routeName,
          arguments: item

        );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(item.title,
        style: TextStyle(fontSize: 24),textAlign: TextAlign.center,),



      ),
    );
  }
}
