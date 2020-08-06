import 'package:flutter/material.dart'
    show
        Alignment,
        AppBar,
        BuildContext,
        Card,
        Center,
        Colors,
        Column,
        Container,
        EdgeInsets,
        Expanded,
        FontWeight,
        Icon,
        IconButton,
        Icons,
        Navigator,
        Padding,
        Row,
        SafeArea,
        Scaffold,
        State,
        StatefulWidget,
        Text,
        TextStyle,
        Widget;
import 'playSong.dart';
import 'playOnline.dart';

class AudioHome extends StatefulWidget {
  @override
  _AudioHomeState createState() => _AudioHomeState();
}

class _AudioHomeState extends State<AudioHome> {
  var playIcon = Icon(Icons.chat);
  bool play = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player'),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Container(
                child: Text(
                  'Song Playlist',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              child: Card(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Center(
                        child: Text(
                          'Closer\nby ChainSmokers\n',
                          style: TextStyle(
                            fontSize: 24,
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
                          icon: Icon(Icons.play_circle_filled),
                          onPressed: () {
                            Song song = new Song();
                            song.playPause();
                            Navigator.pushNamed(context, '/playSong',
                                arguments: {'songName': 'Closer'});
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
              height: 80,
              child: Card(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Center(
                        child: Text(
                          'Let Me Love You \nby Justin Bieber',
                          style: TextStyle(
                            fontSize: 24,
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
                          icon: Icon(Icons.play_circle_filled),
                          onPressed: () {
                            Navigator.pushNamed(context, '/s3',
                                arguments: {'songName': 'Let Me Love You'});
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
              height: 80,
              child: Card(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Center(
                        child: Text(
                          'Fursat \nby Arjun Kanungo',
                          style: TextStyle(
                            fontSize: 24,
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
                          icon: Icon(Icons.play_circle_filled),
                          onPressed: () {
                            Navigator.pushNamed(context, '/s2',
                                arguments: {'songName': 'Fursat'});
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
