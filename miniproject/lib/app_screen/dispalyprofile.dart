import 'package:flutter/material.dart';
class Displayprofile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:Display(),
      appBar: AppBar(
        title: Text(
          'Tour Guide',
          style: TextStyle(fontSize: 20.0),
        ),
        backgroundColor: Color(0xffBA680B),
      ),);
  }

}

class Display extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return Display_State();
  }

}

class Display_State extends State<Display>{
  @override
  Widget build(BuildContext context) {
  
    return ListView(
      children: <Widget>[
         Column(
       children: <Widget>[
         _buildCoverImage(),
         _profilename(),
         _description(),
         _passion(),
         _price(),
         _map(),

         //button for contact
         ButtonTheme(
           height: 50.0,
           minWidth: 250.0,
            child: RaisedButton(
              color: Color(0xffBA680B),
              hoverColor: Color(0xffF5CA99),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
                side: BorderSide(color: Color(0xffBA680B)),
              ),
              child: Text('Contact me',style:TextStyle(color: Colors.white,fontSize: 20.0),)
            ),
          ),

       ], 
      ),
      ],
      
    );
  }

}

// profile picture
Widget _buildCoverImage(){
        return Padding(
          child:Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: Color(0xffBA680B),
                radius: 100,
                child: ClipOval(
                    child: SizedBox(
                      width: 180.0,
                      height: 180.0,
                      child: Image.network('',fit: BoxFit.fill,),
                         ),
                ),

              ),
                ), padding:EdgeInsets.only(top: 20.0)
      
        )
         ;        
}

//name of the guide
Widget _profilename(){
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Center(
      child:Container(
        color: Colors.black,
      )
    ),
  );
}

//Description of the guide
Widget _description(){
  return Padding(
    padding: const EdgeInsets.only(top:20.0,left: 10.0,right: 10.0),
    child: Center(
      child:Container(
        color: Colors.black,
      )
    ),
  );
}

//Passion of the guide
Widget _passion(){
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Center(
      child:Container(
        
        child: Row(
          children: <Widget>[
            Icon(Icons.card_travel,color: Color(0xffBA680B),),
            Text('My passions are'),
          ],
        ),
        color: Colors.black,
      )
    ),
  );
}

//price range
Widget _price(){
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Center(
      child:Container(
        child: Row(
          children: <Widget>[
            Icon(Icons.attach_money,color: Color(0xffBA680B)),
            Text('schghdsga'),
          ],
        ),
        color: Colors.black,
      )
    ),
  );
}

//map
Widget _map(){
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Center(
      child:Container(
        child: Row(
          children: <Widget>[
            Icon(Icons.location_on,color: Color(0xffBA680B)),
            Text('Where you can find me'),
          ],
        ),
        color: Colors.black,
      )
    ),
  );
}















