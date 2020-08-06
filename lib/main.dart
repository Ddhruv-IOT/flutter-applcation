import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:music_player/Audio/s2.dart';
import 'package:music_player/Audio/s3.dart';
import 'Home/home.dart';
import 'Audio/audioHome.dart';
import 'Audio/playSong.dart';
import 'Audio/playOnline.dart';
import 'Video/videoHome.dart';
import 'Video/playVideo.dart';
import 'Video/playOnlineVideo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.blue[50]);
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/video': (context) => VideoHome(),
        '/playVideo': (context) => Video(),
        '/playOnlineVideo': (context) => PlayOnlineVideo(),
        '/audio': (context) => AudioHome(),
        '/playSong': (context) => Song(),
        '/s2': (context) => Song2(),
        '/s3': (context) => Song1(),
        '/playOnline': (context) => OnlineSong(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
