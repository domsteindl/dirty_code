import 'package:flutter/material.dart';

class DirtyScreenTwentyOne extends StatelessWidget {
  const DirtyScreenTwentyOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #21"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            MyOwnWidget21(boxWidth: 100),
            MyOwnWidget21(boxWidth: 100),
            MyOwnWidget21(boxWidth: 100),
            MyOwnWidget21(boxWidth: 100),
          ],
        ),
      ),
    );
  }
}

class MyOwnWidget21 extends StatelessWidget {
  final double boxWidth;
  final double fontSizeSubText;
  final double fontSizeMain;
  final double sizedBoxHeight;
  const MyOwnWidget21(
      {super.key,
      required this.boxWidth,
      this.fontSizeSubText = 24.0,
      this.sizedBoxHeight = 16,
      this.fontSizeMain = 8});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Transform.rotate(
        angle: 3.14159, // Rotate 180 degrees
        child: SizedBox(
          width: boxWidth,
          child: Card(
            color: Colors.cyan,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text('5 + 3 = 8',
                      style: TextStyle(fontSize: fontSizeSubText)),
                  SizedBox(height: sizedBoxHeight),
                  Text('Simple Addition',
                      style: TextStyle(fontSize: fontSizeMain)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
