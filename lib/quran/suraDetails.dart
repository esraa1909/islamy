import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/quran/vers.dart';

class SuraDetials extends StatefulWidget {
 static const String routeName='soura';

  @override
  State<SuraDetials> createState() => _SuraDetialsState();
}

class _SuraDetialsState extends State<SuraDetials> {
 List<String>verses=[];

  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty){

      readSura(args.index);
    }
    return Stack(

      children: [
      Image.asset('asset/image/bg3@3x.png',
      fit: BoxFit.fill,  width: double.infinity,),

    Scaffold(
    appBar: AppBar(
    title: Text(args.name),
    ),

      body:Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),

        ),

        margin:EdgeInsets.symmetric(horizontal: 24, vertical: 48) ,
        padding: EdgeInsets.all(10),
        child: verses.isEmpty?Center(
            child: CircularProgressIndicator(color: Colors.yellow,))
            :ListView.separated(itemBuilder: (context,index){

              return Vers(verses[index],index);
        },
          itemCount: verses.length,
          separatorBuilder: (buildContext,index){

            return Container(

              height: 1,
              color: Theme.of(context).primaryColor,
              margin: EdgeInsets.symmetric(horizontal: 24),
            );
          },
        ),


      ) ,
    ),
  ],
    );
  }

  void readSura(int index) async{

    //open fil and read it index+1.text
    String filsName =' asset/fils/${index+1}.txt';
    String filContent = await rootBundle.loadString(filsName);
    List<String>ayat= filContent.split('\n');
    verses=ayat;
    setState(() {


    });
  }
}

class SuraDetailsArgs{

  String name;
  int index;
  SuraDetailsArgs(this.name,this.index);

}