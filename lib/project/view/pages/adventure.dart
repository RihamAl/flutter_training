import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Adventure extends StatelessWidget {

  List adventure = [
  {"name": "Indiana Jones and the Raiders of the Lost Ark", "evaluate": 8.4},
  {"name": "Jurassic Park", "evaluate": 8.1},
  {"name": "Pirates of the Caribbean: The Curse of the Black Pearl", "evaluate": 8.0},
  {"name": "Avatar", "evaluate": 7.8},
  {"name": "The Lord of the Rings: The Fellowship of the Ring", "evaluate": 8.8},
  {"name": "The Hobbit: An Unexpected Journey", "evaluate": 7.8},
  {"name": "Jumanji", "evaluate": 7.0},
  {"name": "The Revenant", "evaluate": 8.0},
  {"name": "The Jungle Book", "evaluate": 7.4},
  {"name": "The Chronicles of Narnia: The Lion, the Witch and the Wardrobe", "evaluate": 6.9},
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
            title: Text("Adventure Movies"),backgroundColor: Colors.amber,),
          body: Container(
            child: ListView.separated(
              separatorBuilder: (context,i){
                return Divider(color: Colors.black,thickness: 2,);
              },
              itemCount: adventure.length,
              itemBuilder: (context,i){
                return ListTile(
                  title: Text("${adventure[i]["name"]}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                  trailing: Text("Rate is: ${adventure[i]["evaluate"]}",style: TextStyle(color: Colors.amber),),
                );

              },
            ),
          )
      ),
    );
  }
}