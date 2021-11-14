import 'package:flutter/material.dart';
import 'package:twitter_clone/components/tweet.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Twitter"),
      ),
      drawer: Drawer(),
      body: ListView(
        children: [

        ],
      ),
    );
  }
}