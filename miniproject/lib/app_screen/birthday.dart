import 'package:flutter/material.dart';
import 'dart:async';

class Birthday extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return Birthday_State();
  }

}

class Birthday_State extends State<Birthday>{
  DateTime _date =DateTime.now();
  TimeOfDay _time=TimeOfDay.now();

  Future <Null> _selectDate(BuildContext context) async{
      final DateTime picked= await showDatePicker(
        context: context,
       firstDate: new DateTime(2016), 
       lastDate: new DateTime(2019),
        initialDate: null
        );
  }
  @override
  Widget build(BuildContext context) {

    return null;
  }

}