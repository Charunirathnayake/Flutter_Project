import 'package:flutter/material.dart';
import 'first.dart' as first;
import 'fourth.dart' as second;
import 'second.dart' as third;
import 'third.dart' as fourth;

class Mytabs extends StatefulWidget{
  @override
  Mytabs_State createState()=> new Mytabs_State();
}

class Mytabs_State extends State<Mytabs> with SingleTickerProviderStateMixin{

    TabController controller;

    @override
    void initState() { 
      super.initState();  
      controller=new TabController(length:4, vsync: this);
    }

   @override
   void dispose(){
     controller.dispose();
     super.dispose();
   }


  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      
        bottomNavigationBar: new Material(
          color: Color(0xffBA680B),
          child: new TabBar(
            controller: controller,
            tabs: <Widget>[
          //Tab(icon: Icon(Icons.person_add),),
          Tab(icon: Icon(Icons.filter_list)),
          Tab(icon: Icon(Icons.book)),
          Tab(icon: Icon(Icons.mail_outline)),
          Tab(icon: Icon(Icons.perm_identity),)
], 
 ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            new first.First(),
            new second.Fourth(),
            new third.Second(),
            new fourth.Third(),
            
        ],

        )
        ,
    );
  }

}
