import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Comedy extends StatelessWidget {

  List comedy = [
    {"name": "Superbad", "evaluate": 7.6},
    {"name": "The Grand Budapest Hotel", "evaluate": 8.1},
    {"name": "Anchorman: The Legend of Ron Burgundy", "evaluate": 7.2},
    {"name": "Bridesmaids", "evaluate": 6.8},
    {"name": "The Hangover", "evaluate": 7.7},
    {"name": "Ferris Bueller's Day Off", "evaluate": 7.8},
    {"name": "The Big Lebowski", "evaluate": 8.1},
    {"name": "Pineapple Express", "evaluate": 6.9},
    {"name": "Groundhog Day", "evaluate": 8.0},
    {"name": "Dumb and Dumber", "evaluate": 7.3},
  ]
  ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: BackButton(
              onPressed: () => Get.toNamed("/types") ,
              //Navigator.of(context).pushNamed('/types'),
            ),
            title: Text("Comedy Movies"),backgroundColor: Colors.amber,),
          body: Container(
            child: ListView.separated(
              separatorBuilder: (context,i){
                return Divider(color: Colors.black,thickness: 2,);
              },
              itemCount: comedy.length,
              itemBuilder: (context,i){
                return ListTile(
                  title: Text("${comedy[i]["name"]}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                  trailing: Text("Rate is: ${comedy[i]["evaluate"]}",style: TextStyle(color: Colors.amber),),
                );

              },
            ),
          )
      ),
    );
  }
}