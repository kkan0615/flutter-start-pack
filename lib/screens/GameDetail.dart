import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GameDetailScreen();

}

class _GameDetailScreen extends State<GameDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Detail"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('Game detail page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back to home')
            )
          ],
        ),
      ),
    );
  }
}