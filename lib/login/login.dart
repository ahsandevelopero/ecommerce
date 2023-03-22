import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:ecommerce/pages/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  //  ==============  We create two final variable
  final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences? preferences;
  bool? loading = false;
  bool isLogedin = false;

  @override
  void initState() {
    super.initState();
    isSignedIn();
  }


  void isSignedIn() async{
    setState(() {
      loading = true;
    });

    preferences = await SharedPreferences.getInstance();
    isLogedin = await googleSignIn.isSignedIn();
    if(isLogedin){
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    }

    setState(() {
      loading = false;
    });
  }



  Future handleSignIn() async{
    preferences = await SharedPreferences.getInstance();

    setState(() {
      loading = true;
    });

    GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication? googleSignInAuthentication = await googleUser?.authentication;

    /*FirebaseUser firebaseUser = await firebaseAuth.signInwithGoogle(
        idToken: googleSignInAuthentication?.idToken, accessToken: googleSignInAuthentication?.accessToken);
*/
    //===this copy from google
    var googleAuth;
    FirebaseUser user = await _auth.signInWithGoogle(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );


  }






  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }


}

class _auth {
  static signInWithGoogle({required accessToken, required idToken}) {}
}

class FirebaseUser {
}

