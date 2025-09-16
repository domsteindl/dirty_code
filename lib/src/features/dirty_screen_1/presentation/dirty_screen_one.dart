import 'package:flutter/material.dart';

class DirtyScreenOne extends StatelessWidget {
  const DirtyScreenOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #1"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            MyOwnWIdget1(
              textContent: "Box 1",
            ),
            MyOwnWIdget1(
              textContent: "Box 2",
            ),
            MyOwnWIdget1(
              textContent: "Box 3",
            ),
            MyOwnWIdget1(
              textContent: "Box 4",
            )
          ],
        ),
      ),
    );
  }
}

class MyOwnWIdget1 extends StatelessWidget {
  final String textContent;
  const MyOwnWIdget1({super.key, required this.textContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.redAccent),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.bug_report),
          const SizedBox(
            width: 8,
          ),
          Text(
            textContent,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}
