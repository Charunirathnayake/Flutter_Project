import 'package:flutter/material.dart';

//create appbar
class Msgview extends StatelessWidget {
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
       body: Message_view(),
    );
  }
}

class Message_view extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Message_view_State();
  }
}

class Message_view_State extends State<Message_view> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:50.0),
          child: Container(
            height: 200.0,
            width: 250.0,
            color: Colors.black,
          ),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0,top: 20.0),
              child: RaisedButton(
                  color: Color(0xffBA680B),
                  hoverColor: Color(0xffF5CA99),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Color(0xffBA680B)),
                  ),
                  child: Text(
                    'Ignore',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  )),
            ),
            SizedBox(
              width: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0,top: 20.0),
              child: RaisedButton(
                  color: Color(0xffBA680B),
                  hoverColor: Color(0xffF5CA99),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Color(0xffBA680B)),
                  ),
                  child: Text(
                    'Accept',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
