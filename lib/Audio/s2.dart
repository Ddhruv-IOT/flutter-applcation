import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:fluttertoast/fluttertoast.dart';

final assetsAudioPlayer = AssetsAudioPlayer();

class Song2 extends StatefulWidget {
  @override
  _SongState createState() => _SongState();

  // ignore: missing_return
  Function playPause() {
    assetsAudioPlayer.open(
      Audio(
        'assets/audios/fursat.mp3',
        metas: Metas(
          title: "Alone",
          artist: "Alan Walker",
          image: MetasImage.asset("assets/images/alan_walker_alone.jpg"),
        ),
      ),
      autoStart: true,
      showNotification: true,
    );
  }
}

class _SongState extends State<Song2> {
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
                  "assets/images/fursat.jfif",
                ),
              ),
            ),
            SizedBox(
              height: 30,
              width: 100,
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
                          color: Colors.white,
                        );
                        play = false;
//                        assetsAudioPlayer.pause();
                      });
                    } else {
                      setState(() {
                        playIcon = Icon(
                          Icons.play_circle_filled,
                          color: Colors.white,
                        );
                        play = true;
                      });
                    }
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.stop,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      playIcon = Icon(
                        Icons.play_circle_filled,
                        color: Colors.white,
                      );
                      play = true;
                      assetsAudioPlayer.stop();
                    });
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
