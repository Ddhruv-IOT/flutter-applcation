import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:fluttertoast/fluttertoast.dart';

final assetsAudioPlayer = AssetsAudioPlayer();
OnlineSong onlineSong = new OnlineSong();

class OnlineSong extends StatefulWidget {
  @override
  _OnlineSongState createState() => _OnlineSongState();

  //ignore: missing_return
  Future<Function> playPause() async {
    try {
      await assetsAudioPlayer.open(
        Audio.network(
          "https://files.freemusicarchive.org/storage-freemusicarchive-org/music/Music_for_Video/springtide/Sounds_strange_weird_but_unmistakably_romantic_Vol1/springtide_-_03_-_We_Are_Heading_to_the_East.mp3",
        ),
        autoStart: true,
        showNotification: true,
      );
    } catch (e) {
      //mp3 unreachable
    }
  }
}

class _OnlineSongState extends State<OnlineSong> {
  var playIcon = Icon(
    Icons.pause_circle_filled,
    color: Colors.white,
  );
  bool play = false;
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    String songName = data.isNotEmpty ? data['songName'] : 'unknown';
//    assetsAudioPlayer.play();

    return Scaffold(
      appBar: AppBar(
        title: Text('$songName'),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image(
                height: 300,
                width: 300,
                image: AssetImage(
                  "assets/images/headeast.jfif",
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                'Now playing $songName',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: playIcon,
                  onPressed: () {
                    assetsAudioPlayer.playOrPause();
                    if (play) {
                      setState(() {
                        playIcon = Icon(
                          Icons.pause_circle_filled,
                          color: Colors.orangeAccent,
                        );
                        play = false;
//                        assetsAudioPlayer.pause();
                      });
                    } else {
                      setState(() {
                        playIcon = Icon(
                          Icons.play_circle_filled,
                          color: Colors.yellow,
                        );
                        play = true;
                      });
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
