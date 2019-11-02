import 'package:flutter/material.dart';
import 'package:loader_search_bar/loader_search_bar.dart';
class Searchbox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xffBA680B),
        title: Text('Search for your guide'),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search),onPressed: (){
              showSearch(context: context, delegate:Datasearchbox() );
          },
          
          ),
          IconButton(icon: Icon(Icons.filter_list),onPressed: (){

          },)
        ],
      )
    );
  }

}
class Datasearchbox extends SearchDelegate<String>{
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