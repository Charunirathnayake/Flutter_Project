import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:miniproject/app_screen/filters.dart';
import 'package:miniproject/app_screen/guideprofile.dart';
import 'package:miniproject/app_screen/messages.dart';
import 'package:miniproject/app_screen/search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  
  GlobalKey _bottomNavigationKey = GlobalKey();

  int pageindex = 0;

  final Searchbox _searchbox= Searchbox();
  final Messages _messages=Messages();
  final FilterList _filterList=FilterList();
  final Profile _profile=Profile();

  Widget _showpage=Searchbox();
  Widget _pagechooser(int page){
    switch(page){
      case 0:
      return _searchbox;
      break;

      case 1:
      return _messages;
      break;

      case 2:
      return _filterList;
      break;

      case 3:
      return _profile;
      break;




    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: pageindex,
          height: 50.0,
          items: <Widget>[
            Icon(FontAwesomeIcons.bookOpen, size: 30),
            Icon(Icons.email, size: 30),
            Icon(Icons.filter_list, size: 30),
            Icon(Icons.person, size: 30),
           // Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Color(0xffBA680B),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedindex) {
            setState(() {
              _showpage = _pagechooser(tappedindex);
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: _showpage,
          ),
        ));
  }
}