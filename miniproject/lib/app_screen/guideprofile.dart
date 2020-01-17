
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/app_screen/passion.dart';
import 'gender.dart';
import 'birthday.dart';
import 'passion.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'dart:io';


//create appbar
class Profile extends StatelessWidget {
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

      //create drawer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Color(0xffa35700), Color(0xffBA680B)])),
              child: Container(
                  child: Column(
                children: <Widget>[
                  Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      child: Padding(
                        child: Image.asset('images/drawer.png',
                            height: 70.0, width: 70.0),
                        padding: EdgeInsets.all(8.0),
                      )),
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text('Tour Guide',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              )),
            ),
            CustomListTile1(),
            CustomListTile2(),
            CustomListTile3(),
            /*ListTile(
               title: Text('tile1'),
             ),
             ListTile(
               title: Text('tile1'),
             )*/
          ],
        ),
      ),
      body: Myprofile(),
    );
  }
}

//drawer profile
class CustomListTile1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
        child: InkWell(
          splashColor: Color(0xffBA680B),
          onTap: () {},
          child: Container(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.person),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Profile',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//drawer change password
class CustomListTile2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
        child: InkWell(
          splashColor: Color(0xffBA680B),
          onTap: () {},
          child: Container(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.lock),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Change Password',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//drawer signout
class CustomListTile3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
        child: InkWell(
          splashColor: Color(0xffBA680B),
          onTap: () {},
          child: Container(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.offline_pin),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Signout',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//profile

class Myprofile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Myprofile_State();
  }
}

class Myprofile_State extends State<Myprofile> {
  File _image;
  @override
  Widget build(BuildContext context) {

Future getImage() async{
  var image=await ImagePicker.pickImage(source: ImageSource.gallery);
  setState(() {
    _image=image;
  });
}

    return ListView(
      children: <Widget>[
        Column(children: <Widget>[
          SizedBox(
            height: 20.0,
          ),

          //name of the content
          Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'My profile',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ),
          ),

          SizedBox(
            height: 20.0,
          ),

          //profile pic
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: Color(0xffBA680B),
                  radius: 100,
                  child: ClipOval(
                    child: SizedBox(
                      width: 180.0,
                      height: 180.0,
                      child: Image.network(
                        '',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),

              //icon of camera
              Padding(
                padding: EdgeInsets.only(top: 60.0),
                child: IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {
                    getImage();
                  },
                  iconSize: 30.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),

          //firstname
          Column(
          children: <Widget>[

            Text('Full Name',textAlign: TextAlign.left,style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
            
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0),
              child: Container(
                height: 50.0,
                child: TextFormField(
                  
                ),
              ),
            )
          ],
        ),

         ] ),

         SizedBox(
           height: 10.0,
         ),

         //Adress of the guide
Column(
          children: <Widget>[
            Text('Address',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 11.0),
              child: Container(
                height: 40.0,
                child: TextFormField(
                  
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        //city or town
        Column(
          children: <Widget>[

            Text('City or Town',textAlign: TextAlign.left,style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
            
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0),
              child: Container(
                height: 50.0,
                child: TextFormField(
                  
                ),
              ),
            )
          ],
        ),
        
        SizedBox(
          height: 10.0,
        ),

        //Gender of the guide
        Column(
            children: <Widget>[
              Text('Gender',textAlign: TextAlign.left,style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10.0,
              ),
              Gen(),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),

          //Age of the guide
          Column(
            children: <Widget>[
              Text('Birthday',textAlign: TextAlign.left,style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 5.0,),
              Container(
                child: Birth(),
              )
            ],
          ),
          SizedBox(height:10.0),

          //Add Passion about the guide

Column(
          children: <Widget>[
            Text('About Your Passion',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 11.0),
              child: Container(
                height: 40.0,
                child: TextFormField(
                  
                ),
              ),
            )
          ],
        ),
        SizedBox(height:10.0),

        //phone number
             Column(
          children: <Widget>[

            Text('Phone Number',textAlign: TextAlign.left,style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
            
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0),
              child: Container(
                height: 50.0,
                child: TextFormField(
                  
                ),
              ),
            )
          ],
        ),

        SizedBox(
          height: 10.0,
        ),

        //E-mail
         Column(
          children: <Widget>[

            Text('E-mail',textAlign: TextAlign.left,style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
            
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0),
              child: Container(
                height: 50.0,
                child: TextFormField(
                  
                ),
              ),
            )
          ],
        ),

        SizedBox(
          height: 20.0,
        ),

        ButtonTheme(
         height: 30.0,
         minWidth: 250.0,
          child: RaisedButton(
            color: Color(0xffBA680B),
            hoverColor: Color(0xffF5CA99),
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
              side: BorderSide(color: Color(0xffBA680B)),
            ),
            child: Text('Submit',style:TextStyle(color: Colors.white,fontSize: 20.0),)
          ),
        ),

        SizedBox(
          height: 20.0,
        ),

        Divider(
          endIndent: 10.0,
          height: 10.0,
          indent: 10.0,
          thickness: 2.0,
          color: Color(0xffBA680B),
        ),
    SizedBox(
          height: 20.0,
        ),
        Text('Your public profile page is the way for other guides and trvavellers to get to know you.'),

        /*ButtonTheme(
          height: 30.0,
          child: RaisedButton(
            color: Color(0xffBA680B),
            hoverColor: Color(0xffF5CA99),
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
              side: BorderSide(color: Color(0xffBA680B)),
            ),
            child: Text('Back',style:TextStyle(color: Colors.white,fontSize: 15.0),)
          ),
        ),*/

        SizedBox(
          height: 20.0,
        ),
        



       

        ]
        ,
        

      
    );
  }
}

