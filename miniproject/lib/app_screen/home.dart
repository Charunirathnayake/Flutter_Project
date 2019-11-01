import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Container (child:
      (Column(children: <Widget>[
     Center(child:HomeImageAsset(),
     ),
     Padding(
       padding: const EdgeInsets.all(50.0),
       child: RaisedButton(onPressed: () {},
       color: Colors.lightBlueAccent,
       hoverColor: Colors.transparent,
       shape: RoundedRectangleBorder(
         borderRadius: new BorderRadius.circular(5.0),side: BorderSide(color: Colors.lightBlueAccent)
       ),
       
       child: Text('Explore',style:TextStyle(fontSize: 15.0)),
       
       ),
     ) 

    ]
    )
    )
    
   ,
    

      
     decoration: BoxDecoration(
      gradient: LinearGradient(
        colors:[Color(0xff1F3C7A),Color(0xff6D8BCA)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.2,0.9]
      )
    ,)
   
  );
  

  }

}
class HomeImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage=AssetImage('images/Home1.png');
    Image image=Image(image: assetImage ,height: 150.0,width: 150.0,);


    return Container(child: image,margin: EdgeInsets.only(top: 150.0));
  }
}
