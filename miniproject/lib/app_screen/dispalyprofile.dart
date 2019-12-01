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
  
    return Column(
     children: <Widget>[
       _buildCoverImage(),
       _profilename(),

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
        child: Text('Interested guiding passions'),
        color: Colors.black,
      )
    ),
  );
}

//




