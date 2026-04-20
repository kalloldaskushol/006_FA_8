import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LayoutExercise(),
    );
  }
}

class LayoutExercise extends StatelessWidget {
  const LayoutExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Column and Row Layout",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(80.0),
        child: Column(
          children: [
            //! Top 3 small containers are in a Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildSmallBox("1", Colors.redAccent),
                buildSmallBox("2", Colors.green),
                buildSmallBox("3", Colors.blue),
              ],
            ),

            const SizedBox(height: 80),

            //! Middle large container is in the Column
            Container(
              height: 100,
              width: 300,
              alignment: Alignment.center,
              color: Colors.orange,
              child: const Text(
                "Large Container",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 80),

            //! Bottom 2 small containers are in a Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildBottomBox("Left", Colors.purple),
                const SizedBox(width: 20),
                buildBottomBox("Right", Colors.teal),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSmallBox(String text, Color color) {
    return Container(
      height: 80,
      width: 80,
      alignment: Alignment.center,
      color: color,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
  //!MAAking a separate method for the bottom boxes
  Widget buildBottomBox(String text, Color color) {
    return Container(
      height: 50,
      width: 100,
      alignment: Alignment.center,
      color: color,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}