import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: const Text("Fikra"),
          backgroundColor: Colors.grey[900],
        ),
        body: const Center(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Image(
                image: AssetImage('images/flutter-dart.jpg'),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
