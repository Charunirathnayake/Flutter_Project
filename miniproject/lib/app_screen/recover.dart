import 'package:flutter/material.dart';

//create appbar
class Recover extends StatelessWidget{
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
      body: New_password(),
    );
  }
}

class New_password extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return New_password_State();
  }

}

class New_password_State extends State<New_password>{
  @override
  Widget build(BuildContext context) {
  
    return ListView(children: <Widget>[

      Column(

      children: <Widget>[
          SizedBox(
            height: 20.0,
          ),

//First test
        Text('Recover Your Password',
        style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        SizedBox(
          height: 30.0,
        ),

//second test
        Padding(
          child:Text('Enter Your E-mail address and we will send you a reset password-link to your E-mail box.',
          style: TextStyle(fontSize: 17.0),
          ),
           padding: EdgeInsets.only(left: 10.0,right: 10.0),
      ),
        
       SizedBox(
          height: 30.0,
        ),
   
        //entering the mail
         Center(child: Container(
          height:40.0 ,
          width:280.0 ,
        child: TextFormField(
              decoration: InputDecoration(
              labelText: 'E-mail',
              labelStyle: TextStyle(fontSize: 15.0,color: Colors.black),
              hintText: 'nipunsachintha@gmail.com',
              hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
              border: OutlineInputBorder(
              borderSide: BorderSide( 
                color: Colors.grey
              )

              )
              ),
        )
        ,)
         ,),

          SizedBox(
          height: 50.0,
        ),

         Padding(
          padding: EdgeInsets.only(left: 20.0,right: 20.0),
          child: RaisedButton(
            color: Color(0xffBA680B),
            hoverColor: Color(0xffF5CA99),
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
              side: BorderSide(color: Color(0xffBA680B)),
            ),
            child: Text('Send new password link',style:TextStyle(color: Colors.white,fontSize: 20.0),)
          ),
        ),

         SizedBox(
          height: 10.0,
        ),
 ],
  )
     ],
     );
     }
     }