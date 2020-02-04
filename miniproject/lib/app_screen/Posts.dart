import 'package:cloud_firestore/cloud_firestore.dart';

class CrudMethods{
  /*String image,city,email,phonenumber,name,passion;
  Posts(this.image,this.city,this.email,this.name,this.passion,this.phonenumber);*/
  getData() async{
    return await Firestore.instance.collection('profiledata').getDocuments();

  }
}