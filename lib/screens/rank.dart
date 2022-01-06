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
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Team'),
                Tab(text: 'Player'),
              ],
            ),
            title: Text('Home'),
          ),
          body: TabBarView(
            children: [
              TeamRankTab(),
              const PlayerRankTab(),
            ],
          ),
        )
    );
  }
}