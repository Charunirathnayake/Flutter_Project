import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:loader_search_bar/loader_search_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FilterView(),
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
            /*IconButton(icon: Icon(Icons.filter_list),onPressed: (){

          },)*/
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
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //TODO:REMOVE UNNESSARY CODES
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

class FilterView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FilterView_State();
  }
}

class FilterView_State extends State<FilterView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'Explore Your Guide',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 30.0),

            Text(
              'Guide Passion',
              style: TextStyle(fontSize: 25.0,color: Color(0xffBA680B),fontWeight: FontWeight.bold),
            ),

            Divider(
              height: 8.0,
              thickness: 2.0,
              indent: 10.0,
              endIndent: 10.0,
            ),

            SizedBox(height: 10.0),

            //heritage guide
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: RaisedButton(
                  color: Color(0xffBA680B),
                  hoverColor: Color(0xffF5CA99),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Color(0xffBA680B)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.dungeon),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Heritage Guide',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  )),
            ),

            SizedBox(
              height: 10.0,
            ),

            //Cultural guide
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: RaisedButton(
                  color: Color(0xffBA680B),
                  hoverColor: Color(0xffF5CA99),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Color(0xffBA680B)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.atom),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Cultural Guide',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  )),
            ),

            SizedBox(height: 10.0),

            //Adventure guide
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: RaisedButton(
                  color: Color(0xffBA680B),
                  hoverColor: Color(0xffF5CA99),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Color(0xffBA680B)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.hiking),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Adventure Guide',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  )),
            ),

            SizedBox(
              height: 10.0,
            ),

            //Forest guide
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: RaisedButton(
                  color: Color(0xffBA680B),
                  hoverColor: Color(0xffF5CA99),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Color(0xffBA680B)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.tree),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Forest Guide',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  )),
            ),

            SizedBox(
              height: 10.0,
            ),

            //Business guide
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: RaisedButton(
                  color: Color(0xffBA680B),
                  hoverColor: Color(0xffF5CA99),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Color(0xffBA680B)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.building),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Business Guide',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  )),
            ),

            SizedBox(height: 10.0),

            //Nature guide
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: RaisedButton(
                  color: Color(0xffBA680B),
                  hoverColor: Color(0xffF5CA99),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Color(0xffBA680B)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.binoculars),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Nature Guide',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  )),
            ),
          ],
        ),

        SizedBox(height: 10.0,),

        Divider(
          height: 8.0,
          thickness: 2.0,
          indent: 10.0,
          endIndent: 10.0,
        ),

        SizedBox(height: 20.0,),

        Text('Expore your guide and enjoy the journey. ')

        //Explore button
      /*  Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: RaisedButton(
            color: Color(0xffBA680B),
            hoverColor: Color(0xffF5CA99),
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
              side: BorderSide(color: Color(0xffBA680B)),
            ),
            child: Text(
              'Explore your Guide',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),*/
      ],
    );
  }
}
