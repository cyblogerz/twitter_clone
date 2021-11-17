import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/home.dart';
import 'package:twitter_clone/screens/root.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget { MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'root',
      routes: {
        'home':(context)=> Home(),
        'root':(context)=>RootPage(),
      },
    );
  }
}