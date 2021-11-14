
import 'package:flutter/material.dart';
import 'package:twitter_clone/components/tweet.dart';
import 'package:twitter_clone/constants.dart';

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
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            // ignore: prefer_const_constructors
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              
              
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/74711322?v=4'),
              ),
              accountName: Text('Pranav Ajay',style: kdrawerheaderstyle), accountEmail: Text('pranavajay2002@gmail.com',style: kdrawerheaderstyle,)),
              const ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              const ListTile(
                leading: Icon(Icons.featured_play_list),
                title: Text('Lists'),
              ),
              const ListTile(
                leading: Icon(Icons.flash_on),
                title: Text('Moments'),
              ),
               const ListTile(
                leading: Icon(Icons.view_agenda),
                title: Text('Highlights'),
              ),


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