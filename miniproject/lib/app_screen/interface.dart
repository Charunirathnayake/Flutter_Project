import 'package:flutter/material.dart';

//create appbar
class Content extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:Choosepage(),
      appBar: AppBar(
        title: Text(
          'Tour Guide',
          style: TextStyle(fontSize: 20.0),
        ),
        backgroundColor: Color(0xffBA680B),
      ),
    );
  }
}

//choose the registration guide or traveller
class Choosepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return Choosepage_state();
  }

}
class Choosepage_state extends State <Choosepage>{

int _selected=0;
void onchanged(int value){
setState(() {
  _selected=value;
});
}
  List <Widget> makeradio(){
    List <Widget> list=new List<Widget>();
    list.add(
Column(
  children: <Widget>[
    Row(
      children: <Widget>[
Text('Guide'),
    Radio(
      value: 1,
      groupValue: _selected,
      onChanged: (int value){
        onchanged(value);
      },
    ),

      ],
    ),

    Row(
      children: <Widget>[
Text('Travellar'),
    Radio(
      value: 0,
      groupValue: _selected,
      onChanged: (int value){
        onchanged(value);
      },
    )
      ],
    )
    
    
  ],

)
    );
    return list;
  }
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          children: makeradio()
        ),
      ),
    );
  }

}
