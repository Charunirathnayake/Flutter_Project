import 'package:flutter/material.dart';
import 'dart:async';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


class Birthday extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return Birthday_State();
  }

}

class Birthday_State extends State<Birthday>{
  DateTime _date = DateTime.now();
  TimeOfDay _time=TimeOfDay.now();

  Future <Null> _selectDate(BuildContext context) async{
      final DateTime picked= await showDatePicker(
        context: context,
       firstDate: new DateTime(2016), 
       lastDate: new DateTime(2030),
        initialDate: _date
        ); 

         if(picked!=null && picked!=_date){
           print('Data selected:${_date.toString()}');
           setState(() {
             _date=picked;
           });
         }

  
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text('Date selected:${_date.toString()}'),
          RaisedButton(onPressed: () {_selectDate(context);},
            child: Text('Select date'),
          ),
          
        ],
      ),
    )
   ,
    );
    }

}