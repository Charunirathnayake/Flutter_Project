import 'package:flutter/material.dart';
import 'package:miniproject/app_screen/Login.dart';
import 'package:miniproject/app_screen/birthday.dart';
import 'package:miniproject/app_screen/changepassword.dart';
import 'package:miniproject/app_screen/cur_nav_bar.dart';
import 'package:miniproject/app_screen/home.dart';
import 'package:miniproject/app_screen/search.dart';
import 'package:miniproject/app_screen/interface.dart';
import 'package:miniproject/app_screen/signup.dart';
import 'package:miniproject/app_screen/recover.dart';
import 'package:miniproject/app_screen/guideprofile.dart';
import 'package:miniproject/app_screen/guideprofile2.dart';
import 'package:miniproject/app_screen/guideprofile3.dart';
import 'package:miniproject/app_screen/dispalyprofile.dart';
import 'package:miniproject/app_screen/messageview.dart';
import 'package:miniproject/app_screen/filters.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:miniproject/app_screen/birthday.dart';



void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
      home: Birth(),
      debugShowCheckedModeBanner: false,
    )
  );
}

