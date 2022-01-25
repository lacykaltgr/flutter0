import 'package:flutter/material.dart';
import 'package:fluttershare/widgets/progress.dart';
import '../widgets/header.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final usersRef = FirebaseFirestore.instance.collection('users');

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  void initState() {
    getUserById();
    super.initState();
  }

  getUserById() {
    final String id = "oBqeGhjg1T4LdA1wskuv";
    usersRef.doc(id).get().then((DocumentSnapshot doc) {
      print(doc.data());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context, isAppTitle: true),
      body: circularProgress(),
    );
  }
}
