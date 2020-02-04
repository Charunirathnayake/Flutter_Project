import 'package:flutter/material.dart';
import 'package:loader_search_bar/loader_search_bar.dart';


class MainSearchbox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: MainContentOfThePage(),
      appBar:AppBar(
        backgroundColor: Color(0xffBA680B),
        title: Text('Search for your guide'),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search),onPressed: (){
              showSearch(context: context, delegate:MainDatasearchbox() );
          },
          
          ),
          IconButton(icon: Icon(Icons.filter_list),onPressed: (){

          },)
        ],
      )
    );
  }

}
class MainDatasearchbox extends SearchDelegate<String>{
  final distric=['Rathhnapura','Kegalle','Galle','Mathara'];
  final recent=['kegalle','Galle'];

  @override
  List<Widget> buildActions(BuildContext context) {
    
    return[
    IconButton(icon: Icon(Icons.clear),onPressed: (){
      query="";
      
    },)
    ];

  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon:AnimatedIcon(icon:AnimatedIcons.menu_arrow,
      progress:transitionAnimation,
      
    ),onPressed: (){
      close(context,null);
    },);
      }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //TODO:REMOVE UNNESSARY CODES
    final suggesionsList=query.isEmpty?recent:distric;
    return ListView.builder(itemBuilder: (context,index){
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text(suggesionsList[index]),
        );
        
    },itemCount: suggesionsList.length,);
  }

}

class MainContentOfThePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return MainContentOfThePage_state();
  }

}

class MainContentOfThePage_state extends State<MainContentOfThePage>{
  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return ListView(
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
    )
    
    ;
  }

}

Widget itemcard (String titlename,String profilepicpath,bool isfavorite){
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
}