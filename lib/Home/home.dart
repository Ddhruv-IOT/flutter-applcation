import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var playIcon = Icon(Icons.play_circle_filled);
  bool play = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'STAR TRACK ⭐',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.lime,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              SystemNavigator.pop();
              print("hello! you just exited from app");
              Text(
                'Music Player',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                child: Text(
                  "OFFLINE SECTION \n",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/audio.jfif',
                        height: 90,
                        width: 90,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://flutter-examples.com/wp-content/uploads/2020/02/dice.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(150),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Audio Player',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/audio');
                },
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/video.png',
                      height: 90,
                      width: 90,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Video Player',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/video');
                },
              ),
              SizedBox(
                child: Text(
                  "\nONLINE SECTION",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/audio.jfif',
                      height: 90,
                      width: 90,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Audio Player',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/playOnline',
                      arguments: {'songName': 'Online music player'});
                },
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/video.png',
                      height: 90,
                      width: 90,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Video Player',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/playOnlineVideo');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
