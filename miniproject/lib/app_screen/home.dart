import 'package:flutter/material.dart';
import'package:progress_indicators/progress_indicators.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Container (child:Column(children: <Widget>[
         Center(child:Opacity(
          opacity:0.8,
          child:ButtonTheme(
            minWidth: 150.0,
            height: 50.0,
             child:Padding(
               
               padding: const EdgeInsets.only(top: 250.0),
               
                 
              child: RaisedButton(onPressed: () {},
              
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),side:BorderSide(color: Colors.black)),
          color: Colors.black,
          child: Text('Start Your Journey',style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400,color: Colors.white)),
          ),
               
             ) 

          ),)
        ),

      
        
      Container(
        margin: EdgeInsets.only(top:150.0),
        child: JumpingText('Loading...',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w900,color:Colors.white,decorationColor: Colors.transparent,decorationStyle:TextDecorationStyle.dashed),
          ),
      ),
      
      
              Container(child: SizedBox(height: 12.0,width:12.0,)),
        
      ],)
      ,
      
        decoration:BoxDecoration(
          
          image: DecorationImage(image: AssetImage("images/Home.png"),fit: BoxFit.cover)
        ),

      );
    
    }
    
    }

    