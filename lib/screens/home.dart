
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/74711322?v=4'),
              ),
              accountName: Text('Pranav Ajay'), accountEmail: Text('pranavajay2002@gmail.com')),

          ],
        ),
      ),
      body: ListView(
        children: [

        ],
      ),
    );
  }
}