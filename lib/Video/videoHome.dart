import 'package:flutter/material.dart';
import 'playOnlineVideo.dart';

class VideoHome extends StatefulWidget {
  @override
  _VideoHomeState createState() => _VideoHomeState();
}

class _VideoHomeState extends State<VideoHome> {
  var playIcon = Icon(Icons.play_circle_filled);
  bool play = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
        backgroundColor: Colors.red,
        /*  actions: <Widget>[
          IconButton(
            icon: Icon(Icons.ondemand_video),
            onPressed: () {
              PlayOnlineVideo onlineSong = new PlayOnlineVideo();
              Navigator.pushNamed(context, '/playOnlineVideo',
                  arguments: {'videoName': 'Butterfly'});
            },
          ),
        ],*/
      ),
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Container(
                child: Text(
                  'Video Playlist',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 140,
              child: Card(
                margin: EdgeInsets.fromLTRB(7, 0, 7, 8),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: new Image.asset(
                        'assets/images/mountain.jfif',
                        height: 90,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Center(
                        child: Text(
                          '\n Woh Din\n by Ddhruv',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                          alignment: Alignment.centerRight,
                          icon: Icon(Icons.play_circle_outline),
                          onPressed: () {
                            Navigator.pushNamed(context, '/playVideo',
                                arguments: {'videoName': 'mountain'});
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 140,
              child: Card(
                margin: EdgeInsets.fromLTRB(7, 0, 7, 8),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: new Image.asset(
                        'assets/images/yoyo.jfif',
                        height: 90,
                        width: 200,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Center(
                        child: Text(
                          '\n Makhana \n by Yo Yo \n Honey Singh',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                          alignment: Alignment.centerRight,
                          icon: Icon(Icons.play_circle_outline),
                          onPressed: () {
                            Navigator.pushNamed(context, '',
                                arguments: {'songName': 'Faded'});
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 140,
              child: Card(
                margin: EdgeInsets.fromLTRB(7, 0, 7, 8),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: new Image.asset(
                        'assets/images/cb.jfif',
                        height: 90,
                        width: 200,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Center(
                        child: Text(
                          '\n Combination\n by Amrit Maan',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                          alignment: Alignment.centerRight,
                          icon: Icon(Icons.play_circle_outline),
                          onPressed: () {
                            Navigator.pushNamed(context, '',
                                arguments: {'songName': 'Faded'});
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
