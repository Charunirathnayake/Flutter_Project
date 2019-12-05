import 'package:flutter/material.dart';

//create appbar
class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          'Tour Guide',
          style: TextStyle(fontSize: 20.0),
        ),
        backgroundColor: Color(0xffBA680B),
        actions: <Widget>[Padding(
          child:IconButton(
            icon:Icon(
              Icons.arrow_back,
          size: 25.0
           ) ,
           onPressed: (

           ) {},
           )
        ,padding: EdgeInsets.only(right: 15.0),)
           ],
      ),
      body: Contactme(),
    );
  }
}

class Contactme extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return Contactme_State();
  }

}

class Contactme_State extends State<Contactme>{
  @override
  Widget build(BuildContext context) {
    
    return Form(
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Center(child: Container(
          height:40.0 ,
          width:280.0 ,
        child: TextField(
          decoration: InputDecoration(
              prefixIcon:
               Icon(Icons.email),
              labelText: 'Venue',
              hintText: 'Nuwara-Eliya',
              hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              )
              ),
        )
        ,)
         ,),

         SizedBox(height: 25.0,),

         //ask for the time 
         Center(child: Container(
          height:40.0 ,
          width:280.0 ,
        child: TextField(
          decoration: InputDecoration(
              prefixIcon:
               Icon(Icons.email),
              labelText: 'Time',
              hintText: '7.00am',
              hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              )
              ),
        )
        ,)
         ,),

         SizedBox(
           height: 25.0,
         )



       
            ],
          )
        ],
      ),

    );
  }
  }
  

