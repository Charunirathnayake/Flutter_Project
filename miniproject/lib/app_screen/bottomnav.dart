import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return Bottomnavigation_state();
  }

}
 class Bottomnavigation_state extends State<Bottomnavigation>{
    int selected_page=0;
    final pageOptions=[
      Text('item1'),Text('item2'),Text('item3'),Text('item4')
    ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: pageOptions[selected_page],
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.filter_list),
          title: Text('Filters')
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.book),
          title: Text('Bookins')
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.mail_outline),
          title: Text('Messages')
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.person_add),
          title: Text('Edit')
        ),

      ],
      currentIndex: selected_page,
      onTap: (int index){
          setState(() {
            selected_page=index;
          });
      },

      )
      ,
    )

    ;
  }

 }