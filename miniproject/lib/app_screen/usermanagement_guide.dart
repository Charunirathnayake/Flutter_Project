import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserManagement{
  bool isLoggedIn() {
    if (FirebaseAuth.instance.currentUser() != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> addData(GuideData) async{
    if(isLoggedIn()){
      Firestore.instance.collection('Guide').add(GuideData).catchError((e){
        print(e);
      });
    }else{
      print('You Need to log in');
    }
  }
}