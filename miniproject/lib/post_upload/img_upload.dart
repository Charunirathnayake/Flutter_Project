import 'package:flutter/material.dart';
import 'package:google_maps_webservice/directions.dart';
import 'package:intl/intl.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Upload_img extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Upload_img_State();
  }
}

class Upload_img_State extends State<Upload_img> {
  File sampleImage;
  String Url;
  final formkey = GlobalKey<FormState>();
  String _myvalue;

  Future getImage() async {
    var tempImg = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      sampleImage = tempImg;
    });
  }

  bool validateAndsave() {
    final form = formkey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  Future<void> UploadStatusImage() async {
    if (validateAndsave()) {
      final StorageReference PostImgRef =
          FirebaseStorage.instance.ref().child("Post Images");
      var timeKey = DateTime.now();
      final StorageUploadTask uploadTask =
          PostImgRef.child(timeKey.toString() + ".jpg").putFile(sampleImage);
      var ImageUrl = await (await uploadTask.onComplete).ref.getDownloadURL();
      Url = ImageUrl.toString();
      print("Image Url=" + Url);
      saveToDatabase(Url);
      gotouploadpage();
    }
  }

  void saveToDatabase(Url) {
    var dbTimeKey = DateTime.now();
    var formatDate = DateFormat('MMM d,YYYY');
    var formatTime = DateFormat('EEEE,hh:mm aaa');

    String date = formatDate.format(dbTimeKey);
    String time = formatTime.format(dbTimeKey);

    DatabaseReference ref = FirebaseDatabase.instance.reference();
    var data = {
      "image": Url,
      "description": _myvalue,
      "date": date,
      "time": time
    };
    ref.child("Posts").push().set(data);
  }

  void gotouploadpage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Upload_img();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffBA680B),
        title: Text("Upload Image"),
        centerTitle: true,
      ),
      body: Center(
        child: sampleImage == null ? Text("Select an Image") : enableUpload(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Add Image',
        child: Icon(Icons.add_a_photo),
        backgroundColor: Color(0xffBA680B),
      ),
    );
  }

  Widget enableUpload() {
    return ListView(
      children: <Widget>[
        Container(
          child: Form(
            key: formkey,
            child: Column(
              children: <Widget>[
                Image.file(sampleImage, height: 330.0, width: 660.0),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Description About You'),
                  validator: (value) {
                    return value.isEmpty ? 'Description is required' : null;
                  },
                  onSaved: (value) {
                    return _myvalue = value;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                RaisedButton(
                  onPressed: UploadStatusImage,
                  elevation: 10.0,
                  child: Text("Add New Post"),
                  textColor: Colors.white,
                  color: Color(0xffBA680B),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
