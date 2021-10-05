import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({Key? key}) : super(key: key);
  static const String routeName = '/stack';

  @override
  _StackScreenState createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  double t1 = 0, t2 = 0, t3 = 0;
  double l1 = 0, l2 = 0, l3 = 0;

  // method to return 100x100 container
  Widget getContainer(Color color, double height, double width) {
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }

  void changeState() {
    setState(() {
      // Create a random number generator.
      final random = Random();

      t1 = random.nextInt(200).toDouble();
      t2 = random.nextInt(200).toDouble();
      t3 = random.nextInt(200).toDouble();

      l1 = random.nextInt(200).toDouble();
      l2 = random.nextInt(200).toDouble();
      l3 = random.nextInt(200).toDouble();
    });
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      changeState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: t1,
            left: l1,
            child: getContainer(Colors.blue, 100, 100),
          ),
          Positioned(
            top: t2,
            left: l2,
            child: getContainer(Colors.green, 80, 80),
          ),
          Positioned(
            top: t3,
            left: l3,
            child: getContainer(Colors.red, 50, 50),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => startTimer(),
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
