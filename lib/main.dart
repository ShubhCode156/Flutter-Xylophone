import 'package:flutter/material.dart';
import 'package:xylophone3/xyloscreen.dart';

void main() {
  runApp(xylo3());
}

class xylo3 extends StatelessWidget {
  const xylo3({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: xyloscreen(),
    );
  }
}
