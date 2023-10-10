import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(

          body: SingleChildScrollView(
            child: 
            SafeArea(
              child: Container(margin: EdgeInsets.all(20),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      //child:Image.asset('assets/undraw_Upload_image_re_svxx (7).png',height: 350),
                    ),
                    SizedBox(height: 100,),
                    Text("SignUP",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                    SizedBox(height: 10,),
                    Text("SignUp to continue using this app",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 50,),
                    Text("Email",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    TextFormField(decoration: InputDecoration(
                      hintText: "Enter Email",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.email,color: Colors.amber,),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Colors.amber,
                              width: 3
                          )
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    ),
                    SizedBox(height: 10,),
                    Text("Phone",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    TextFormField(decoration: InputDecoration(
                      hintText: "Enter Your Number",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.phone,color: Colors.amber,),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Colors.amber,
                              width: 3
                          )
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    ),


                    SizedBox(height: 10,),
                    Text("Password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08, // adjust this value as needed

                      child: TextFormField(obscureText: true,
                        decoration: InputDecoration(
                          suffix: IconButton(icon: Icon(Icons.remove_red_eye),color: Colors.amber,onPressed: (){
                            // obscureText: false;
                          },),
                          hintText: "Enter Password",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.password,color: Colors.amber,),
                          enabled: true,

                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.amber,
                                  width: 3
                              )
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08, // adjust this value as needed

                      child: TextFormField(obscureText: true,
                        decoration: InputDecoration(
                          suffix: IconButton(icon: Icon(Icons.remove_red_eye),color: Colors.amber,onPressed: (){
                            // obscureText: false;
                          },),
                          hintText: "Confirm Your Password",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.password,color: Colors.amber,),
                          enabled: true,

                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.amber,
                                  width: 3
                              )
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    SizedBox(height: 40,),
                    Center(
                      child: ElevatedButton(onPressed: (){},
                        child: Text("SignUp"),
                        style: ElevatedButton.styleFrom(primary: Colors.amber,
                          textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize:20),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.symmetric(horizontal:100),      ),),
                    ),
                    SizedBox(height: 10,),
                    Divider(thickness: 2,),
                    SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("have an account?"),
                        InkWell(
                            onTap: (){
                              Get.toNamed('/types');
                            },
                            child: Text("Login",style: TextStyle(color: Colors.amber),)),
                      ],)

                  ],
                ),
              ),
            ),
          )
      ),
    );
  }


}