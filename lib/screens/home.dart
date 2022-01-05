import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start_pack/screens/GameDetail.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreen();

}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('Home screen'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GameDetailScreen()),
                    );
                  },
                  child: const Text('Go back to home')
              )
            ],
          )
        ),
      ),
    );
  }
}