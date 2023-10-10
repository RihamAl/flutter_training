import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_training/project/view/pages/adventure.dart';
import 'package:flutter_training/project/view/pages/comedy.dart';
import 'package:flutter_training/project/view/pages/drama.dart';
import 'package:flutter_training/project/view/pages/login.dart';
import 'package:flutter_training/project/view/pages/signup.dart';
import 'package:flutter_training/project/view/pages/types.dart';
import 'package:flutter_training/project/view/pages/action.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';


void main() {
  runApp
    (ScreenUtilInit(
      designSize: const Size( 360,780),
      builder: (BuildContext context, Widget? child) =>
          GetMaterialApp(
            home: Login(),
            debugShowCheckedModeBanner: false,
            getPages:[
              GetPage(name:'/login', page:() => Login()),
              GetPage(name:'/signup', page:() => Signup()),
              GetPage(name:'/types', page:() => Types()),
              GetPage(name:'/Action', page:() => Actionn()),
              GetPage(name:'/Adventure', page:() => Adventure()),
              GetPage(name:'/Comedy', page:() => Comedy()),
              GetPage(name:'/Drama', page:() => Drama()),
              // من اجل السرعة فقط
              // كنت اريد استخدام flutter secured storagr package
              // من اجل تمرير اسم نوع الفيلم ويكون لدي ملف واحد فقط يحوي جميع ال lists وعلى حسب اسم النوع المختار يتم تمريره للطباعة على حسب الاسم المحفوظ على ان يكون اسم ال list من نفس اسم النوع المختار
              // لكن لم استطع ان اقوم بهذا لان هذه الباكج تحتاج الى نت قوي ولم استطيع الحصول عليه
              // وقد قمت بهذا للاربع انواع الاولى فقط من اجل السرعة
            ],
          )
  ));
}
