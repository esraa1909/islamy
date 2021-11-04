import 'package:flutter/material.dart';

class Vers extends StatelessWidget {
  String text;
  int index;
  Vers(this.text,this.index);

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
       child: Text(text +'{${index+1}',style: TextStyle(fontSize: 18),textAlign: TextAlign.center,
         textDirection: TextDirection.rtl,),
    );
  }
}
