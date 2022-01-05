import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start_pack/screens/PlayerRankTab.dart';
import 'package:flutter_start_pack/screens/TeamRankTab.dart';

class RankScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RankScreen();

}

class _RankScreen extends State<RankScreen> {
  @override
  Widget build(BuildContext context) {
   // return Scaffold(
   //   body: Column(
   //     children: const <Widget>[
   //       Text('Rank screen'),
   //     ],
   //   ),
   // );
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.group), text: 'Team'),
                Tab(icon: Icon(Icons.person), text: 'Player'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TeamRankTab(),
              PlayerRankTab(),
            ],
          ),
        )
    );
  }
}