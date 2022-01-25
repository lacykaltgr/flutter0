import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './pages/pages.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 0',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.teal,
        ),
      ),
      home: Home(),
    );
  }
}
