import 'package:flutter/material.dart';
import 'package:islamy/hadeth/hadeth.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName='hadeth';

  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)!.settings.arguments as HadethItem;
    return Stack(children: [
      Image.asset(
        'asset/image/bg3@3x.png',
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Container(

          padding: EdgeInsets.all(15),
          margin: EdgeInsets.symmetric(horizontal: 24,vertical: 48),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),

          child:SingleChildScrollView

            (child: Text(args.content,style: TextStyle(fontSize: 18),textAlign: TextAlign.center,)),

        ),
      )
    ]);
  }
}
