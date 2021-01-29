import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int s){
    final player = AudioCache();
    player.play('note$s.wav');
  }
   Widget createB(int color,int x){
      return Expanded(
      child: FlatButton(onPressed: (){
        playSound(x);
      },color: Color(color),),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                createB(4294901760,1),
                createB(4294944000,2),
                createB(4294967040,3),
                createB(4278222848,4),
                createB(4282557941,5),
                createB(4278190335,6),
                createB(4285140397,7),

                /*  createB(,2),
                createB(,3),
                createB(,4),
                createB(,5),
                createB(,6),
                createB(,7),*/

              ],),
        ),
      ),
    );
  }
}
