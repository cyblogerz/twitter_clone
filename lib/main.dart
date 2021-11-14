import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget { MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        'home':(context)=> Home(),
      },
    );
  }
}