import 'package:flutter/material.dart';
import 'package:twitter_clone/components/tweet.dart';

class TweetList extends StatefulWidget {
  const TweetList({Key? key}) : super(key: key);

  @override
  _TweetListState createState() => _TweetListState();
}

class _TweetListState extends State<TweetList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TweetTile();
      },
      itemCount: widget.tweetTiles.length,
    );
  }
}
