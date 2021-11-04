import 'package:flutter/material.dart';
import 'package:islamy/main.dart';
import 'dart:math'as math;

class Sebha extends StatefulWidget {

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int count=0;
  List<String>tasbehList=['الحمدلله', 'سبحان الله','لا اله الا الله','الله اكبر','لاحوله ولا قوه الا بالله','استغفر الله'];
  int currentIndex=0;
  double angle=0;

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children:[
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
             InkWell(
               onTap: (){
                 onTesbhaClick();
               },


                child: Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
                    child:
                Transform.rotate(
                  angle: math.pi/180*angle ,
                    child: Image.asset('asset/image/body of seb7a.png'))),
              ),

              Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),

                  child:
              Image.asset('asset/image/head of seb7a.png')),

            ],


          ),

          Expanded(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25),

                  child: Text('عدد التسبيحات', style: TextStyle(fontSize: 25,fontWeight:FontWeight.w600,color: Colors.black54),),


                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: MyThemeData.PrimaryColor,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Text('$count',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: MyThemeData.PrimaryColor,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text(tasbehList[currentIndex],style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),

                )

              ],
            ),
          )

        ],

      ),
    );
  }
  void onTesbhaClick() {
    setState(() {

    });
    count++;
    angle +=30;
    if(count%33==0){
      if(currentIndex==5){
        currentIndex=0;
      }
      currentIndex++;
    }
  }
}


