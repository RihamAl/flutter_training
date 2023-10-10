import 'package:flutter/material.dart';
//import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Types extends StatelessWidget {

  //final FlutterSecureStorage typeMovie = FlutterSecureStorage();

  final List<String> types = [
    "Action",
    "Adventure",
    "Comedy",
    "Drama",
    "Fantasy",
    "Horror",
    "Musicals",
    "Mystery",
    "Romance",
    "Science fiction",
    "Sports",
    "Thriller",
    "Western"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Row(children: [
          Icon(Icons.movie,color: Colors.white,),
          Text("   Movie Types",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

        ],),
        backgroundColor: Colors.amber,),
        body:  Container(
              margin: EdgeInsets.all(5),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: types.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () async {
                      print(types[index]);
                      //await typeMovie.write(key: "jwt", value: types[index]);
                      //print(await typeMovie.read(key: "jwt"));
                      Get.toNamed("/${types[index]}");
                    },
                    child: Container(
                       decoration: BoxDecoration(
                         color: Colors.white,
                         border: Border.all(width: 5 ,color: Colors.amber),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          types[index],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
        ),
      ),
    );
  }
}