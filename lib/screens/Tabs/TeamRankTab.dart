import 'package:flutter/material.dart';

class TeamRankTab extends StatefulWidget {
  const TeamRankTab({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TeamRankTab();

}

class _TeamRankTab extends State<TeamRankTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Team Tab')
      ),
    );
  }
}