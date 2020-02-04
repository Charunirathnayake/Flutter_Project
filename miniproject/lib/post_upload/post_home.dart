import 'package:flutter/material.dart';
import 'Posts.dart';
import 'package:firebase_database/firebase_database.dart';
class PostHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return PostHome_State();
  }

}
class PostHome_State extends State<PostHome>{
  List<Posts> postList=[];
@override
  void initState() {
 
    super.initState();
     DatabaseReference postsref=FirebaseDatabase.instance.reference().child("Posts");
     postsref.once().then((DataSnapshot snap)
     {
var KEYS=snap.value.keys;
var DATA=snap.value;
postList.clear();
for(var individualKey in KEYS){
  Posts posts=Posts(
    DATA[individualKey]['image'],
     DATA[individualKey]['description'],
    DATA[individualKey]['date'],
    DATA[individualKey]['time']
   
    );
    postList.add(posts);
}
setState(() {
  print('Length:$postList.length');
});

     }
     );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Tour Guide'),
      backgroundColor: Color(0xffBA680B),),
      body: Container(
        child: postList.length==0?Text('No Posts Available'):ListView.builder(
          itemCount: postList.length,
          itemBuilder: (_,index){
            return PostsUI(postList[index].image,postList[index].description,postList[index].date,postList[index].time);
          },
        ) ,
      ),
    );
  }

Widget PostsUI(String image,String description,String date,String time){
  return Card(
    elevation: 10.0,
    margin: EdgeInsets.all(15.0),
    child: Container(
      padding: EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
            date,
            style:Theme.of(context).textTheme.subtitle,
            textAlign:TextAlign.center,
          ),
          
          Text(
            time,
            style:Theme.of(context).textTheme.subtitle,
            textAlign:TextAlign.center,
          )
            ],
          ),
          SizedBox(height:10.0),
          Image.network(image,fit:BoxFit.cover),
          SizedBox(height: 10.0,),
           Text(
            description,
            style:Theme.of(context).textTheme.subhead,
            textAlign:TextAlign.center,
          )
         

        ],
      ),
    ),
  );
}
}