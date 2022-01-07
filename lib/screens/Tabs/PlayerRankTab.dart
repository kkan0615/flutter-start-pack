import 'package:flutter/material.dart';

class PlayerRankTab extends StatefulWidget {
  const PlayerRankTab({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PlayerRankTab();

}

class _PlayerRankTab extends State<PlayerRankTab> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text('Player tab')
      ),
    );
  }
}