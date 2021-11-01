import 'package:flutter/material.dart';
import 'package:islamy/main.dart';
import 'package:islamy/moshaf/moshafTab.dart';
import 'package:islamy/quran/quranTabe.dart';
import 'package:islamy/sebha/sebhaTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;

  Widget build(BuildContext context) {
    return Stack(
      children:[
        Image.asset('asset/image/bg3@3x.png'),

       Scaffold(
         appBar: AppBar(
           title: Text('islami'),
         ),
         bottomNavigationBar: Theme(
           data: Theme.of(context).copyWith(
             canvasColor: MyThemeData.PrimaryColor
           ),
           child: BottomNavigationBar(
             onTap: (index){

               currentIndex=index;
               setState(() {

               });
             },

             currentIndex:currentIndex ,
             items: [
               BottomNavigationBarItem(icon:ImageIcon(AssetImage('radio_blue.png')), label: 'radio'),
               BottomNavigationBarItem(icon:ImageIcon(AssetImage('sebha_blue.png')), label: 'sebha'),
               BottomNavigationBarItem(icon:ImageIcon(AssetImage('path 1.png')), label: 'quran'),
               BottomNavigationBarItem(icon:ImageIcon(AssetImage('moshaf_blue.png')), label: 'moshaf'),

             ],
           ),
         ),

    body: Container(

  child:Views[currentIndex] ,
),

      ),]
    );
  }
  List<Widget>Views=[
    Moshaf(),
    Quran(),
    Sebha(),


  ];
}
