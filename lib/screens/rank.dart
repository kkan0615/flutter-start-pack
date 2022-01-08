import 'package:flutter/material.dart';
import 'package:flutter_start_pack/screens/Tabs/PlayerRankTab.dart';
import 'package:flutter_start_pack/screens/Tabs/TeamRankTab.dart';

class RankScreen extends StatefulWidget {
  const RankScreen({Key? key}) : super(key: key);

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
            toolbarHeight: 50,
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Team'),
                Tab(text: 'Player'),
              ],
            ),
            title: const Text('Rank'),
          ),
          body: const TabBarView(
            children: [
              TeamRankTab(),
              PlayerRankTab(),
            ],
          ),
        )
    );
  }
}