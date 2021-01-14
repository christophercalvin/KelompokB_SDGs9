import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kulakan_store/LoginPage.dart';
import 'package:kulakan_store/main.dart';
import 'package:kulakan_store/detail.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);

    return (firebaseUser == null)? LoginPage() : MyHomePage(firebaseUser);
  }
}
