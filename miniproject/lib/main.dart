import 'package:flutter/material.dart';
import 'package:miniproject/app_screen/Login.dart';
import 'package:miniproject/app_screen/home.dart';
import 'package:miniproject/app_screen/search.dart';
import 'package:miniproject/app_screen/interface.dart';
import 'package:miniproject/app_screen/signup.dart';
import 'package:miniproject/app_screen/recover.dart';
import 'package:miniproject/app_screen/guideprofile.dart';
void main(){
  runApp(
    MaterialApp(
      home: Profile(),
      debugShowCheckedModeBanner: false,
    )
  );
}

