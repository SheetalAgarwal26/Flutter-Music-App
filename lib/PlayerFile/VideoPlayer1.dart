import 'package:BS_Player/PlayerFile/VideoPlayer2.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayVideo extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<PlayVideo> {
  String videoURL = "https://www.youtube.com/watch?v=WNSEXJJhKTU";

  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: new RaisedButton(
                  color: Colors.pink,
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.yellow.shade500,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PlayVideo2())),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
