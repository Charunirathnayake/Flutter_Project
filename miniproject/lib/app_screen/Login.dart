import 'package:flutter/material.dart';

class LoginInterface extends StatelessWidget {
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
      body: Loginpage(),
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
          height: 40.0,
        ),
        Text('Login',
            style: TextStyle(
                color: Color(0xffBA680B),
                fontWeight: FontWeight.bold,
                fontSize: 25.0)),
        SizedBox(
          height: 40.0,
        ),

        //Enter E-mail
        buildTextField('E-mail', 'nikeshi456@gmail.com', false),
        SizedBox(
          height: 40.0,
        ),

        //Enter password
        buildTextField('Password', 'Password', true),
        SizedBox(
          height: 40.0,
        ),

        //Navigate Signup
        Center(
          child: Container(
            child: GestureDetector(
              child: Text('No Account yet?SignUp here',style: TextStyle(decorationStyle: TextDecorationStyle.solid,fontSize: 15.0),)
          ,
              onTap: () {
                //TODO:define ontap
              },
            ),
          ),
        ),

        SizedBox(
          height: 10.0,
        ),

        //Forget password
        Center(
          child: Container(
            child: GestureDetector(
              child: Text('I forget my password',style: TextStyle(decorationStyle: TextDecorationStyle.solid,fontSize: 15.0),),
              onTap: () {
                //TODO:DEFINE ONTAP
               
              },
            ),
          ),
        ),
        SizedBox(height: 10.0,),

        //line separator
        Center(child: Container(
          child: Text('_______________________OR________________________',style:TextStyle(color: Color(0xffBA680B)),),
        ) 
        ,),
       OutlineButton(onPressed: () {},
       child: Row(
         children: <Widget>[
           
         ],
       ),

       )
       
      ]),
    );
  }

  //Email & Password template
  Widget buildTextField(String labelText, String hintText, bool secureText) {
    return Center(
      child: Container(
        height: 40.0,
        width: 280.0,
        child: TextField(
          obscureText: secureText,
          decoration: InputDecoration(
              prefixIcon:
                  labelText == "E-mail" ? Icon(Icons.email) : Icon(Icons.lock),
              suffixIcon: labelText == "Password"
                  ? IconButton(
                      onPressed: () {
                        //todolist
                      },
                      icon: Icon(Icons.visibility_off),
                    )
                  : Container(),
              labelText: labelText,
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
          keyboardType: TextInputType.emailAddress,
        ),
      ),
    );
  }
}
