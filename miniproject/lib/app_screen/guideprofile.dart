import 'package:flutter/material.dart';
import 'package:miniproject/app_screen/passion.dart';
import 'gender.dart';
import 'birthday.dart';
import 'passion.dart';
//import 'package:image_picker/image_picker.dart';

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
  @override
  Widget build(BuildContext context) {
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
                  onPressed: () {},
                  iconSize: 30.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: <Widget>[
              Text('First Name'),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
                child: Container(
                  child: TextFormField(),
                ),
              )
            ],
          ),

          //lastname
          Column(
            children: <Widget>[
              Text('Last Name'),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
                child: Container(
                  child: TextFormField(),
                ),
              )
            ],
          ),

          //gender
          Column(
            children: <Widget>[
              Text('Gender'),
              SizedBox(
                height: 10.0,
              ),
              Gen(),
            ],
          ),

          SizedBox(height: 10.0),

          //birthday
          Column(
            children: <Widget>[
              Text('Birthday'),
              Container(
                child: Birth(),
              )

              //datepicker
            ],
          ),
          Column(
            children: <Widget>[Text('Your Passion'),Container(child:Passion() ,) ],
          )
        ])
      ],
    );
  }
}

class Sizedbox {}
