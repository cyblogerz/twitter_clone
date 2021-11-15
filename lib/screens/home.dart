
// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:twitter_clone/components/tweet.dart';
import 'package:twitter_clone/constants.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue),
        title: const Text("Twitter",style: TextStyle(color: Colors.blue),),
        actions: [
          Icon(Icons.notifications)
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.drive_file_rename_outline),
      ),
      body: ListView.separated(
        itemBuilder: (context,index){
        return ListTile(
          leading: Icon(Icons.account_circle_rounded,size: 70,),
          title: Row(
            children: <Widget>[
              Text("Pranav",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("@cyblogerz.1m",style: TextStyle(color: Colors.grey),)
              
            ],
          ),
          trailing: Icon(Icons.more_horiz,),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical:10.0),
                child: Text("pple keep saying things about how f'ed up your life is",style: TextStyle(color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.only(right:50.0,top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  
                    Row(
                      children: <Widget>[
                        Icon(Icons.comment_outlined,color: Colors.grey,size: 18,),
                        Padding(
                          padding: const EdgeInsets.only(left:3.0),
                          child: Text("34"),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                       Icon(Icons.repeat,color: Colors.grey,size: 18,),
                        Padding(
                          padding: const EdgeInsets.only(left:3.0),
                          child: Text("34"),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                       Icon(Icons.favorite_outline_outlined,color: Colors.grey,size: 18,),
                        Padding(
                          padding: const EdgeInsets.only(left:3.0),
                          child: Text("34"),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.share,color: Colors.grey,size: 18,),
                        
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );

      },
       separatorBuilder: (context,index){
        return Divider();
      },itemCount: 10),
      
    );
  }
}