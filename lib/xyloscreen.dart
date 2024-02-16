import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

List<Color> colorbob = [
  Colors.red,
  Colors.amber,
  Colors.yellow,
  Colors.green,
  Colors.teal,
  Colors.blue,
  Colors.purple,
];

class xyloscreen extends StatelessWidget {
  const xyloscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "XyloPhone",
            style: TextStyle(fontSize: 35),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 65, 62, 62),
      ),
      body: Column(
        children: [
          commonwidget(number: 0),
          commonwidget(number: 1),
          commonwidget(number: 2),
          commonwidget(number: 3),
          commonwidget(number: 4),
          commonwidget(number: 5),
          commonwidget(number: 6),
        ],
      ),
    );
  }
}

class commonwidget extends StatelessWidget {
  const commonwidget({
    super.key,
    required this.number,
  });

  final int number;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        final player = AudioPlayer();
        player.play(AssetSource('note${number + 1}.wav'));
      },
      child: Container(
        color: colorbob[number],
        width: double.infinity,
        height: height / 8.1,
      ),
    );
  }
}
