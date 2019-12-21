import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Passion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Passion_State();
  }
}

class Passion_State extends State<Passion> {
  bool _ischecked = false;
  void onChanged(bool value) {
    setState(() {
      _ischecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Container(
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  //Heritage guide
                  CheckboxListTile(
                    onChanged: (bool value) {
                      onChanged(value);
                    },
                    value: _ischecked,
                    title: Text('Heritage Guide'),
                    secondary: Icon(FontAwesomeIcons.dungeon),
                    activeColor: Color(0xffBA680B),
                  ),

//Cultural guide
                  CheckboxListTile(
                    onChanged: (bool value) {
                      onChanged(value);
                    },
                    value: _ischecked,
                    title: Text('Cultural Guide'),
                    secondary: Icon(FontAwesomeIcons.atom),
                    activeColor: Color(0xffBA680B),
                  ),

                  //Adventure guide
                  CheckboxListTile(
                    onChanged: (bool value) {
                      onChanged(value);
                    },
                    value: _ischecked,
                    title: Text('Adventure Guide'),
                    secondary: Icon(FontAwesomeIcons.hiking),
                    activeColor: Color(0xffBA680B),
                  ),

                  //Forest guide
                  CheckboxListTile(
                    onChanged: (bool value) {
                      onChanged(value);
                    },
                    value: _ischecked,
                    title: Text('Forest Guide'),
                    secondary: Icon(FontAwesomeIcons.tree),
                    activeColor: Color(0xffBA680B),
                  ),

                  //Business guide
                  CheckboxListTile(
                    onChanged: (bool value) {
                      onChanged(value);
                    },
                    value: _ischecked,
                    title: Text('Forest Guide'),
                    secondary: Icon(FontAwesomeIcons.building),
                    activeColor: Color(0xffBA680B),
                  ),

                  //Nature guide
                  CheckboxListTile(
                    onChanged: (bool value) {
                      onChanged(value);
                    },
                    value: _ischecked,
                    title: Text('Nature Guide'),
                    secondary: Icon(FontAwesomeIcons.binoculars),
                    activeColor: Color(0xffBA680B),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ) ,)
    ;
  }
}
