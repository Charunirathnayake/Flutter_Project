import 'package:flutter/material.dart';


class Gen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return Gen_state();
  }

}
class Gen_state extends State <Gen>{

int _selected=0;
void onchanged(int genvalue){
setState(() {
  _selected=genvalue;
  //TODO LIST(provide the logic to go another page)
});
}

//create radio buttons for selections.
  List <Widget> makeradio(){
    List <Widget> list=new List<Widget>();
    list.add(
      Container(
        padding: EdgeInsets.only(top: 8.0),
        child: Padding(child:
        Row(
  children: <Widget>[
    Row(
        children: <Widget>[
Text('Male',style: TextStyle(
  //fontWeight: FontWeight.bold,
  fontSize: 15.0
),),
    Radio(
        value: 0,
        groupValue: _selected,
        onChanged: (int genvalue){
          onchanged(genvalue);
        },
    ),

        ],
    ),
  Row(
        children: <Widget>[
Text('Female',style: TextStyle(fontSize: 15.0,
   // fontWeight: FontWeight.bold
),),
    Radio(
        value: 1,
        groupValue: _selected,
        onChanged: (int value){
          onchanged(value);
        },
    )
        ],
    )
    ],

), padding: EdgeInsets.only(left:50.0)
,),
      )
    );
    return list;
  }
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Center(
        child: Column(
          children: makeradio()
        ),
      ),
    );
  }

}
