
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

/*class User{
  User({@required this.uid});
  final String uid;
}



abstract class authbase {
    Future<User> currentUser();
    Future<void> signOut();
    Future<User> signInWithGoogle();

  }


class auth implements authbase{
  final _firebaseAuth=FirebaseAuth.instance;

  User userFromFirebase(FirebaseUser user){
    if(user==null){
      return null;
    }
    return User(uid: user.uid);
  }

  @override
  Future<User> currentUser() async{
    final user= await _firebaseAuth.currentUser();
    return userFromFirebase(user);
  }
@override
  Future<void> signOut() async{
    await _firebaseAuth.signOut();
  } 

  //Google signin
  @override
  Future<User> signInWithGoogle() async{
    GoogleSignIn googleSignIn=GoogleSignIn();
    GoogleSignInAccount googleAccount=await googleSignIn.signIn();
    if(googleAccount!=null){
        GoogleSignInAuthentication googleAuth=await googleAccount.authentication;

        if(googleAuth.accessToken!=null&&googleAuth.idToken!=null){
        final authResult= await _firebaseAuth.signInWithCredential(
          GoogleAuthProvider.getCredential(
            accessToken: googleAuth.accessToken,
           idToken: googleAuth.idToken

          )
        );
        return userFromFirebase(authResult.user);}
        else{
          throw PlatformException(code: 'ERROR_MISSING_GOOGLE_AUTH_TAKEN',
      message: 'Missing google auth taken'

      );
        }
    }
    else{
      throw PlatformException(code: 'ERROR_ABORTED_BY_USER',
      message: 'Sign in aborted by user'

      );
    }
  }


}*/
class Auth{
  Future<bool> signInWithEmail(String email, String password) async {
    try {
      AuthResult result = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      if (user != null) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}


  