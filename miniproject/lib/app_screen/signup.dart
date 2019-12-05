import 'package:flutter/material.dart';
import 'package:miniproject/app_screen/Login.dart';

//create appbar
class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tour Guide',
          style: TextStyle(fontSize: 20.0),
        ),
        backgroundColor: Color(0xffBA680B),
      ),
      body: Register(),
    );
  }
}

class Register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return Register_state();
  }
}

class Register_state extends State<Register>{

//validation
var formkey=GlobalKey<FormState>();


//controll the editor
  TextEditingController FirstController=TextEditingController();
  TextEditingController LastController=TextEditingController();
  TextEditingController MailController=TextEditingController();
  TextEditingController PassController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child:
    Container(
      child: ListView(children: <Widget>[
        Text(
          'Your Signup will show up here.',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text('SignUp',
            style: TextStyle(
                color: Color(0xffBA680B),
                fontWeight: FontWeight.bold,
                fontSize: 25.0)),
        SizedBox(
          height: 30.0,
        ),

        //Google signup
        Padding(
          padding: EdgeInsets.only(left: 20.0,right: 20.0),
          child: OutlineButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
              side: BorderSide(color: Colors.white),
            ),
            child: Row(
              children: <Widget>[
                Image_Google(),
                SizedBox(
                  width: 5.0,
                ),
                Padding(
                  child: Container(
                    child: Text('Continue with Google'),
                  ),
                  padding: EdgeInsets.only(left: 5.0),
                )
              ],
            ),
          ),
        ),

        SizedBox(
          height: 20.0,
        ),

        //facebook signup
        Padding(
          padding: EdgeInsets.only(left: 20.0,right: 20.0),
          child: OutlineButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
              side: BorderSide(color: Colors.white),
            ),
            child: Row(
              children: <Widget>[
                Image_Facebook(),
                SizedBox(
                  width: 5.0,
                ),
                Padding(
                  child: Container(
                    child: Text('Continue with FaceBook'),
                  ),
                  padding: EdgeInsets.only(left: 5.0),
                )
              ],
            ),
          ),
        ),

        SizedBox(height: 20.0
        ,),

        Divider(
          height: 10.0,
          indent: 10.0,
          thickness: 2.0,
          color: Color(0xffBA680B),

        ),
          SizedBox(
            height:20.0
          ),

//firstname textfield
         Center(child: Container(
          height:40.0 ,
          width:280.0 ,
        child: TextFormField(
          validator: (String value){
            if(value.isEmpty){
              return ("Please enter the first name");
            }
          },
          controller: FirstController,
          decoration: InputDecoration(
              labelText: 'First Name',
              labelStyle: TextStyle(fontSize: 15.0,color: Colors.black),
              hintText: 'Nipun',
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
           height: 20.0,
         ),
// lastname field
         Center(child: Container(
          height:40.0 ,
          width:280.0 ,
        child: TextFormField(
          validator: (String value){
            if(value.isEmpty){
              return ("please enter last name");
            }
          },
          controller: LastController,
          decoration: InputDecoration(
            hoverColor: Color(0xffBA680B),
              labelText: 'Last Name',
              labelStyle: TextStyle(fontSize: 15.0,color: Colors.black),
              hintText: 'Sachintha',
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
           height: 20.0,
         ),

         //e-mail field
         Center(child: Container(
          height:40.0 ,
          width:280.0 ,
        child: TextFormField(
          // validate with email

          controller: MailController,
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
           height: 20.0,
         ),

         //password field
          Center(
      child: Container(
        height: 40.0,
        width: 280.0,
        child: TextFormField(
          controller: PassController,
         obscureText: true,
          decoration: InputDecoration(
              prefixIcon:
                 Icon(Icons.lock),
              suffixIcon:
                  IconButton(
                      onPressed: () {
                        //todolist
                      },
                      icon: Icon(Icons.visibility_off),
                    ),
              labelText: 'Password',
              labelStyle: TextStyle(fontSize: 15.0,color: Colors.black),
              hintText: 'Password',
              hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
              border: OutlineInputBorder(
               borderSide: BorderSide( 
                color: Colors.grey
              ) 
              )
              ),
          keyboardType: TextInputType.emailAddress,
        ),
      ),
    ),

     SizedBox(
           height: 20.0,
         ),

    //sign up button
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
            child: Text('SignUp',style:TextStyle(color: Colors.white,fontSize: 20.0),)
          ),
        ),

        SizedBox(
          height: 20.0,
        ),


        Row(children: <Widget>[
          SizedBox(
            width: 25.0,
          ),
            Text('Already have a account?',style:TextStyle(
          decorationStyle: TextDecorationStyle.solid, fontSize: 15.0,
                    color: Color(0xff7B4508),
                    fontWeight: FontWeight.bold  )
                    ),

             SizedBox(width: 10.0,),

            GestureDetector(
              child: Text(
                'Log here',
                style: TextStyle(
                    decorationStyle: TextDecorationStyle.solid, fontSize: 15.0,
                    color: Color(0xff7B4508),
                    fontWeight: FontWeight.bold
                    ),
              ),
              onTap: () {
                //TODO:DEFINE ONTAP
                Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>(LoginInterface()),
                        )); 
  
              },
            ),


        ],
        ),

        SizedBox(
          height: 20.0,
          width: 25.0,
        ),

        Padding(child:Text('When using Tourguide you accept our Terms & conitions and privacy policy.',style:TextStyle(color: Colors.black,
        fontWeight:FontWeight.bold,fontSize:15.0
        )
        ),
        padding: EdgeInsets.only(right: 25.0,left: 25.0),
        ),
        
        SizedBox(height: 10.0,)

        ]
        )
        )
     ) ;
  }
}

//set image for google signup button
class Image_Google extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetimage = AssetImage('images/google.png');
    Image image = Image(image: assetimage, height: 15.0, width: 15.0);
    return image;
  }
}

//Set Image for the facebook button
class Image_Facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetimage = AssetImage('images/facebook.png');
    Image image = Image(image: assetimage, height: 20.0, width: 20.0);
    return image;
  }
}
