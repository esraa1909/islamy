import 'package:flutter/material.dart';
import 'package:islamy/quran/suraName.dart';

class Quran extends StatelessWidget {

  List<String>sura=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  Widget build(BuildContext context) {
    return Column(
      children:[
        Expanded(
    flex: 1,
          child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
          children:[ Image.asset('asset/image/quran.png'),

    ],
    ),
        ),

        Expanded(
          flex:3,

      child: ListView.separated(
    itemBuilder: (buildContext,index){
      return SuraName(sura[index],index);
    },
    itemCount: sura.length,
    separatorBuilder: (buildContext,index){

      return Container(

      height: 1,
      color: Theme.of(context).primaryColor,
    margin: EdgeInsets.symmetric(horizontal: 24),
      );
    },
    ),


      ),

      ],


    );
  }
}
