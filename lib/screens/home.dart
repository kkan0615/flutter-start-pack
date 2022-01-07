import 'package:flutter/material.dart';
import 'package:flutter_start_pack/api/Match.dart';
import 'package:flutter_start_pack/api/Team.dart';
import 'package:flutter_start_pack/screens/Details/ScheduleGameDetail.dart';
import 'package:flutter_start_pack/widgets/ScheduleGame.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreen();

}

class _HomeScreen extends State<HomeScreen> {
  final List<GameSchedule> _gameScheduleLIst = [
    GameSchedule(
      home: SampleTeamList[9],
      away: SampleTeamList[4],
      dateTime: DateTime.now()
    ),
    GameSchedule(
        home: SampleTeamList[3],
        away: SampleTeamList[5],
      dateTime: DateTime.now()
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        toolbarHeight: 50,
        title: const Text('Home'),
      ),
      body: Card(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                'Today match up',
                style: Theme.of(context).textTheme.headline6,
              )],
            ),
            for (var _matchGame in _gameScheduleLIst) GameScheduleWidget(gameSchedule: _matchGame)
          ],
        ),
      ),
    );
  }
}