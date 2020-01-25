import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:miniproject/app_screen/Login_traveller.dart';
import 'usermanagement_traveller.dart';

//create appbar
class Signup_traveller extends StatelessWidget {
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
      body: Register_traveller(),
    );
  }
}

class Register_traveller extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Register_traveller_state();
  }
}

class Register_traveller_state extends State<Register_traveller> {
//validation
  var formkey = GlobalKey<FormState>();
  UserManagement userObj = new UserManagement();

//controll the editor
  TextEditingController FirstController = TextEditingController();
  TextEditingController LastController = TextEditingController();
  TextEditingController MailController = TextEditingController();
  TextEditingController PassController = TextEditingController();

  //password visibility icon changing
  bool _isHiddenPw = true;
  bool _isHiddenCPw = true;

  void _visiblePw() {
    setState(() {
      _isHiddenPw = !_isHiddenPw;
      _isHiddenCPw = _isHiddenCPw;
    });
  }

  void _visibleCPw() {
    setState(() {
      _isHiddenPw = _isHiddenPw;
      _isHiddenCPw = !_isHiddenCPw;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        child: Container(
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
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
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
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
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

          SizedBox(
            height: 20.0,
          ),

          Divider(
            height: 10.0,
            indent: 10.0,
            thickness: 2.0,
            color: Color(0xffBA680B),
          ),
          SizedBox(height: 20.0),

//firstname textfield
          Center(
            child: Container(
              height: 40.0,
              width: 280.0,
              child: TextFormField(
                validator: (String value) {
                  if (value.isEmpty) {
                    return ("Please enter the first name");
                  }
                },
                controller: FirstController,
                decoration: InputDecoration(
                    errorStyle:
                        TextStyle(color: Color(0xffBA680B), fontSize: 15.0),
                    labelText: 'First Name',
                    labelStyle: TextStyle(fontSize: 15.0, color: Colors.black),
                    hintText: 'Nipun',
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
// lastname field
          Center(
            child: Container(
              height: 40.0,
              width: 280.0,
              child: TextFormField(
                validator: (String value) {
                  if (value.isEmpty) {
                    return ("please enter last name");
                  }
                },
                controller: LastController,
                decoration: InputDecoration(
                    errorStyle:
                        TextStyle(color: Color(0xffBA680B), fontSize: 15.0),
                    hoverColor: Color(0xffBA680B),
                    labelText: 'Last Name',
                    labelStyle: TextStyle(fontSize: 15.0, color: Colors.black),
                    hintText: 'Sachintha',
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
          ),

          SizedBox(
            height: 20.0,
          ),

          //e-mail field
          Center(
            child: Container(
              height: 40.0,
              width: 280.0,
              child: TextFormField(
                // validate with email

                controller: MailController,
                validator: validateEmail,
                decoration: InputDecoration(
                    errorStyle:
                        TextStyle(color: Color(0xffBA680B), fontSize: 15.0),
                    labelText: 'E-mail',
                    labelStyle: TextStyle(fontSize: 15.0, color: Colors.black),
                    hintText: 'nipunsachintha@gmail.com',
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
          ),

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
                validator: validatePassword,
                obscureText: _isHiddenPw,
                decoration: InputDecoration(
                    errorStyle:
                        TextStyle(color: Color(0xffBA680B), fontSize: 15.0),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: _visiblePw,
                        icon: _isHiddenPw
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility)),
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 15.0, color: Colors.black),
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),

          SizedBox(
            height: 20.0,
          ),

          //sign up button
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: RaisedButton(
                color: Color(0xffBA680B),
                hoverColor: Color(0xffF5CA99),
                onPressed: () async {
                  if (formkey.currentState.validate()) {
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: MailController.text,
                        password: PassController.text);

                    userObj.addData({
                      'firstname': this.FirstController.text,
                      'lastname': this.LastController.text,
                      'email': this.MailController.text,
                    });
                    Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginInterface_traveller()));
                  }
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  side: BorderSide(color: Color(0xffBA680B)),
                ),
                child: Text(
                  'SignUp',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                )),
          ),

          SizedBox(
            height: 20.0,
          ),

          Row(
            children: <Widget>[
              SizedBox(
                width: 25.0,
              ),
              Text('Already have a account?',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.solid,
                      fontSize: 15.0,
                      color: Color(0xff7B4508),
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 10.0,
              ),
              GestureDetector(
                child: Text(
                  'Log here',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.solid,
                      fontSize: 15.0,
                      color: Color(0xff7B4508),
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  //TODO:DEFINE ONTAP
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => (LoginInterface_traveller()),
                      ));
                },
              ),
            ],
          ),

          SizedBox(
            height: 20.0,
            width: 25.0,
          ),

          Padding(
            child: Text(
                'When using Tourguide you accept our Terms & conitions and privacy policy.',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)),
            padding: EdgeInsets.only(right: 25.0, left: 25.0),
          ),

          SizedBox(
            height: 10.0,
          )
        ])));
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

//E-mail validatio
String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return 'Enter Valid Email';
  }
  return null;
}

String validatePassword(String value) {
  Pattern pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regex = new RegExp(pattern);
  print(value);
  if (value.isEmpty) {
    return 'Please enter password';
  } else {
    if (!regex.hasMatch(value))
      return 'Enter valid password';
    else
      return null;
  }
}
