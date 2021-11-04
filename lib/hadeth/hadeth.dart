import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/hadeth/hadethName.dart';

class Hadeth extends StatefulWidget {

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  @override
  Widget build(BuildContext context) {
    if(allHadethItem.isEmpty)
    LoadHadethFils();
    return Column(
      children: [
        Expanded(
          flex: 1,
            child: Image.asset('asset/image/asmala.png')),
        Expanded(
          flex: 3,
          child:
        allHadethItem.isEmpty?Center(child: CircularProgressIndicator(color: Colors.yellow,)):
          ListView.separated(itemBuilder: (context,index){

            return HadethName(allHadethItem[index]);
          },
            itemCount: allHadethItem.length, separatorBuilder: (BuildContext context, int index) {
            return Container(
              color: Theme.of(context).primaryColor,
              height: 1,
              margin: EdgeInsets.symmetric(horizontal: 24),
            );
            },

          ),

        ),
      ],

    );
  }
  List<HadethItem>allHadethItem=[];

  void LoadHadethFils()async {
    List<HadethItem>allHadethData=[];
    String filContent = await rootBundle.loadString('asset/fil/ahadeth .txt');
    List<String>allAhadeth = filContent.split('#\r\n');
    for (int i = 0; i < allAhadeth.length; i++) {
     List<String>singleHadeth= allAhadeth[i].split('\n');
     String  title=singleHadeth[0];
     String content='';
     for(int j=1;j<singleHadeth.length;j++){

       content+=singleHadeth[j]+'';
     }
     HadethItem item=HadethItem(title,content);
     allHadethData.add(item);
     allHadethItem=allHadethData;
     setState(() {

     });
    }
  }
}

  class HadethItem{
    String title;
    String content;

    HadethItem(this.title,this.content);


  }









