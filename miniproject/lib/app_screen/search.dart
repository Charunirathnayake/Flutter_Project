import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loader_search_bar/loader_search_bar.dart';
import 'package:miniproject/app_screen/interface.dart';
import 'Posts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Searchbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ContentOfThePage(),
        appBar: AppBar(
          backgroundColor: Color(0xffBA680B),
          title: Text('Search for your guide'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: Datasearchbox());
              },
            ),
            IconButton(
              icon: Icon(Icons.person_add),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Content()));
              },
            )
          ],
        ));
  }
}

class Datasearchbox extends SearchDelegate<String> {
  final distric = ['Rathhnapura', 'Kegalle', 'Galle', 'Mathara'];
  final recent = ['kegalle', 'Galle'];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggesionsList = query.isEmpty ? recent : distric;
    return ListView.builder(
      itemBuilder: (context, index) {
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text(suggesionsList[index]),
        );
      },
      itemCount: suggesionsList.length,
    );
  }
}

class ContentOfThePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentOfThePage_state();
  }
}

class ContentOfThePage_state extends State<ContentOfThePage> {
  QuerySnapshot profiledata;
  CrudMethods crudobj = CrudMethods();

  @override
  void initState() {
    crudobj.getData().then((results) {
      setState(() {
        profiledata = results;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _profileList();
    /*ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                //call for the itemcard widget
                
              ],
            )
          ],
        )
      ],
    )*/
  }

  Widget _profileList() {
    String titlename;
    bool isfavorite;
    if (profiledata != null) {
      return ListView.builder(
        itemCount: profiledata.documents.length,
        padding: EdgeInsets.all(5.0),
        itemBuilder: (context, i) {
          return new Card(
              elevation: 10.0,
              child: Column(children: <Widget>[
                Container(
                  height: 250.0,
                  width: 280.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              profiledata.documents[i].data['Image']),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 8.0,
                ),
                //desciption of the guide
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        //define the guide name
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            profiledata.documents[i].data['name'],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 45.0,
                        ),

                        //favorite icon
                        /* Material(
                    elevation: isfavorite ? 0.0:2.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isfavorite? Colors.grey.withOpacity(0.25):Colors.white
                      ),
                      child: Center(
                        child: isfavorite? Icon(Icons.favorite_border):
                        Icon(Icons.favorite,color:Colors.red),
                      ),
                    ),
                  )*/
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),

                    //Description provided by the guide
                    Container(
                      width: 175.0,
                      child: Text(profiledata.documents[i].data['passion']),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(profiledata.documents[i].data['city'])
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(profiledata.documents[i].data['phonenumber'])
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.mail_outline),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(profiledata.documents[i].data['email'])
                      ],
                    ),
                    //button for contact
                ButtonTheme(
              height: 40.0,
              minWidth: 75.0,
              child: RaisedButton(
            color: Color(0xffBA680B),
            hoverColor: Color(0xffF5CA99),
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
              side: BorderSide(color: Color(0xffBA680B)),
            ),
            child: Text('Contact me',style:TextStyle(color: Colors.white,fontSize: 15.0),)
          ),
         ) ,
         SizedBox(height: 10.0,)     


 ],
                ),
              ]));
        },
      );
    } else {
      return Text('Loading, Please wait..');
    }
  }
}

/*Widget itemcard (String titlename,String profilepicpath,bool isfavorite){
      return Padding(padding: EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0),
      child: Container(
        height: 150.0,
        width: double.infinity,
        color: Colors.brown,
        child: Row(
          children: <Widget>[
            //define the profile pic
           Container(
              height:150.0 ,
              width: 140.0,
              decoration: BoxDecoration(
                image: DecorationImage(image:AssetImage(profilepicpath),
                fit: BoxFit.cover
                   )
                 ),
            ),

          SizedBox(
            width: 4.0,
          ),

            //desciption of the guide
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  //define the guide name
                  Text(titlename,style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold),),
                  SizedBox(width: 45.0,),

              //favorite icon
                  Material(
                    elevation: isfavorite ? 0.0:2.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isfavorite? Colors.grey.withOpacity(0.25):Colors.white
                      ),
                      child: Center(
                        child: isfavorite? Icon(Icons.favorite_border):
                        Icon(Icons.favorite,color:Colors.red),
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: 5.0,),

              //Description provided by the guide
              Container(
                width: 175.0,
                child: Text('Description that get by the database'),
              ),


              //contact button

            ButtonTheme(
              height: 25.0,
              minWidth: 75.0,
              child: RaisedButton(
            color: Color(0xffBA680B),
            hoverColor: Color(0xffF5CA99),
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
              side: BorderSide(color: Color(0xffBA680B)),
            ),
            child: Text('Contact me',style:TextStyle(color: Colors.white,fontSize: 15.0),)
          ),
         )  
        

            ],
          )

          ],
        ),
      ),

      );
}*/
