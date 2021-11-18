import 'package:flutter/material.dart';
import 'package:twitter_clone/constants.dart';
import 'package:twitter_clone/screens/home.dart';
import 'package:twitter_clone/screens/message.dart';
import 'package:twitter_clone/screens/notifications.dart';
import 'package:twitter_clone/screens/search.dart';

List<Widget>_Pages = [Home(),Notifications(),Messages(),Search()];
var _index =0;

class RootPage extends StatefulWidget {
  const RootPage({ Key? key }) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue),
        title: const Text("Twitter",style: TextStyle(color: Colors.blue),),
        actions: [
          Icon(Icons.flash_on)
        ],
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
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: Colors.blue,
          size: 27,
          
  
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.black26
        ),
        showSelectedLabels: false,
        // showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(
          color: Colors.black26,
        ),
        
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.mail),label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications,),label: "Notifications")
        ],
        
      ),
      body: _Pages[_index],
    );
  }
}