import 'package:flutter/material.dart';
import 'signup.dart';
import 'recover.dart';

//sketch of the login page
class LoginInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Loginpage(),
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

class Loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Loginpage_state();
  }
}

class Loginpage_state extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: <Widget>[
        Text(
          'Join with Tour Guide',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text('Login',
            style: TextStyle(
                color: Color(0xffBA680B),
                fontWeight: FontWeight.bold,
                fontSize: 25.0)),
        SizedBox(
          height: 30.0,
        ),

        //Enter E-mail
        Center(child: Container(
          height:40.0 ,
          width:280.0 ,
        child: TextField(
          decoration: InputDecoration(
              prefixIcon:
               Icon(Icons.email),
              labelText: 'E-mail',
              hintText: 'nikeshi@gmail.com',
              hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              )
              ),
          keyboardType: TextInputType.emailAddress,
        )
        ,)
         ,),
        SizedBox(
          height: 30.0,
        ),

        //Enter password
         Center(
      child: Container(
        height: 40.0,
        width: 280.0,
        child: TextField(
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
              hintText: 'Password',
              hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              )
              ),
          keyboardType: TextInputType.emailAddress,
        ),
      ),
    ),
  SizedBox(
          height: 30.0,
        ),

        //Navigate Signup
        Center(
          child: Container(
            child: GestureDetector(
              child: Text(
                'No Account yet?SignUp here',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid, fontSize: 15.0,
                    color:Color(0xff7B4508),
                    fontWeight: FontWeight.bold,
                    decorationThickness: 1.5
                    ),
                    
              ),
              onTap: () {
                Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>(Signup()),
                        )); 
  
              },
            ),
          ),
        ),

        SizedBox(
          height: 10.0,
        ),

        //button for login
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
            child: Text('Login',style:TextStyle(color: Colors.white,fontSize: 20.0),)
          ),
        ),


        //Forget password
        Center(
          child: Container(
            child: GestureDetector(
              child: Text(
                'I forget my password',
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
                          MaterialPageRoute(builder: (context) =>(Recover()),
                        )); 
  


              },
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),

        //line separator
        Center(
          child: Container(
            child: Text(
              '_______________________OR________________________',
              style: TextStyle(color: Color(0xffBA680B)),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        //button for google signin
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
        SizedBox(height: 20,),
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
        )


      ]),
    );
  }
}


//Set Image for the button
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
