import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("game_app"),
          backgroundColor: Colors.indigo[900],
        ),
        body: ImapePage(),
      ),
    ),
  );
}

class ImapePage extends StatelessWidget {
  const ImapePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Text(
            "try one more time",
            style: TextStyle(
                fontSize: 30, fontFamily: 'FiraCode', color: Colors.white),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(40),
                child: TextButton(
                  onPressed: () {
                    print("you pressed left button");
                  },
                  child: Image(
                    image: AssetImage('images/image-1.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(40),
                child: TextButton(
                  onPressed: () {
                    print('you pressed right button');
                  },
                  child: Image(
                    image: AssetImage('images/image-1.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
