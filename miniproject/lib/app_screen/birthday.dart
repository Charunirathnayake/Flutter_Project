//import 'package:flutter/material.dart';
//import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';



//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


/*class Birthday extends StatefulWidget{
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

}*/
class Birth extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _State();
  }

}

class _State extends State<Birth>{
  String initValue="Select your Birth Date";
bool isDateSelected= false;
DateTime birthDate; // instance of DateTime
String birthDateInString;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Center(
        child: Scaffold(
          body: GestureDetector(
   child: new Icon(Icons.calendar_today),
   onTap: ()async{
         final datePick= await showDatePicker(
            context: context,
            initialDate: new DateTime.now(),
            firstDate: new DateTime(1900),
            lastDate: new DateTime(2100)
           );
        if(datePick!=null && datePick!=birthDate){
          setState(() {
            birthDate=datePick; 
            isDateSelected=true;
            birthDateInString = "${birthDate.month}/${birthDate.day}/${birthDate.year}"; 
          });
         }
   }
 ),
        ),
      ),
    );
  }

}



