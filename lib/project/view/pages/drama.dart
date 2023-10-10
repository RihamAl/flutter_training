import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Drama extends StatelessWidget {

  List drama = [
    {"name": "The Shawshank Redemption", "evaluate": 9.3},
    {"name": "Forrest Gump", "evaluate": 8.8},
    {"name": "Schindler's List", "evaluate": 8.9},
    {"name": "The Godfather", "evaluate": 9.2},
    {"name": "The Green Mile", "evaluate": 8.6},
    {"name": "Good Will Hunting", "evaluate": 8.3},
    {"name": "A Beautiful Mind", "evaluate": 8.2},
    {"name": "American Beauty", "evaluate": 8.3},
    {"name": "The Pursuit of Happyness", "evaluate": 8.0},
    {"name": "Gladiator", "evaluate": 8.5},
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
            title: Text("Drama Movies"),backgroundColor: Colors.amber,),
          body: Container(
            child: ListView.separated(
              separatorBuilder: (context,i){
                return Divider(color: Colors.black,thickness: 2,);
              },
              itemCount: drama.length,
              itemBuilder: (context,i){
                return ListTile(
                  title: Text("${drama[i]["name"]}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                  trailing: Text("Rate is: ${drama[i]["evaluate"]}",style: TextStyle(color: Colors.amber),),
                );

              },
            ),
          )
      ),
    );
  }
}