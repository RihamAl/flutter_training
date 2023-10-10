import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Actionn extends StatelessWidget {

  List action=[
    {"name": "Die Hard", "evaluate": 8.2},
    {"name": "Mad Max: Fury Road", "evaluate": 8.1},
    {"name": "The Dark Knight", "evaluate": 9.0},
    {"name": "Gladiator", "evaluate": 8.5},
    {"name": "John Wick", "evaluate": 7.4},
    {"name": "Kill Bill: Vol. 1", "evaluate": 8.1},
    {"name": "Lethal Weapon", "evaluate": 7.6},
    {"name": "The Matrix", "evaluate": 8.7},
    {"name": "Taken", "evaluate": 7.8},
    {"name": "The Bourne Identity", "evaluate": 7.9},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Get.toNamed("/types") ,
                //Navigator.of(context).pushNamed('/types'),
          ),
          title: Text("Action Movies"),backgroundColor: Colors.amber,),
      body: Container(
        child: ListView.separated(
          separatorBuilder: (context,i){
            return Divider(color: Colors.black,thickness: 2,);
          },
          itemCount: action.length,
          itemBuilder: (context,i){
            return ListTile(
              title: Text("${action[i]["name"]}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
              trailing: Text("Rate is: ${action[i]["evaluate"]}",style: TextStyle(color: Colors.amber),),
            );

          },
        ),
      )
      ),
    );
  }
}