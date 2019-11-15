import 'package:flutter/material.dart';

//create appbar
class Profile extends StatelessWidget{
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
                gradient: LinearGradient(colors: <Color>[
                  Color(0xffa35700),
                  Color(0xffBA680B)
                ]

                )
              ),
              child:Container(child:
                Column(children: <Widget>[
                       Material(
                         elevation: 10.0,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      child:Padding(
                        child: Image.asset('images/drawer.png',height: 70.0,width: 70.0),
                   padding: EdgeInsets.all(8.0),
                      ) 
                      ),

                      Padding(padding: EdgeInsets.all(6.0),
                      child: Text('Tour Guide',style: TextStyle(color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                      ) 
                      ),
                      )
                    
                ],)
              ),
             ),
             CustomListTile1()
             ,
             CustomListTile2()
             ,
            CustomListTile3()
            ,
             /*ListTile(
               title: Text('tile1'),
             ),
             ListTile(
               title: Text('tile1'),
             )*/
          ],
        ),
      ),
      //body: Register(),
    );
  }
}

//drawer profile
class CustomListTile1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade400))
      ),
      child: Padding(
        padding: const EdgeInsets.only(right:8.0,left: 8.0),
        child: InkWell(
          splashColor:Color(0xffBA680B) ,
          onTap: (){
            
          },
          child: Container(
            height: 50.0, 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Icon(Icons.person),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Profile',style: TextStyle(fontSize: 16.0),),
                  ),
                ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    )
    ;
  }

}

//drawer change password
class CustomListTile2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade400))
      ),
      child: Padding(
        padding: const EdgeInsets.only(right:8.0,left: 8.0),
        child: InkWell(
          splashColor:Color(0xffBA680B) ,
          onTap: (){
            
          },
          child: Container(
            height: 50.0, 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Icon(Icons.lock),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Change Password',style: TextStyle(fontSize: 16.0),),
                  ),
                ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    )
    ;
  }

}

//drawer signout
class CustomListTile3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade400))
      ),
      child: Padding(
        padding: const EdgeInsets.only(right:8.0,left: 8.0),
        child: InkWell(
          splashColor:Color(0xffBA680B) ,
          onTap: (){
            
          },
          child: Container(
            height: 50.0, 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Icon(Icons.offline_pin),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Signout',style: TextStyle(fontSize: 16.0),),
                  ),
                ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    )
    ;
  }

}



