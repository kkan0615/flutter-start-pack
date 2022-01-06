import 'package:flutter/material.dart';
import 'package:flutter_start_pack/api/Match.dart';
import 'package:flutter_start_pack/screens/Details/MatchGameDetail.dart';
import 'package:flutter_start_pack/widgets/MatchGame.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreen();

}

class _HomeScreen extends State<HomeScreen> {
  final List<MatchGame> _matchGameList = [
    MatchGame(dateTime: DateTime.now()),
    MatchGame(dateTime: DateTime.now())
  ];
  // List<int> _matchList = [1, 2, 3, 4, 5, 6];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
          child: Column(
            children: <Widget>[
              Text(
                'Home screen',
                style: Theme.of(context).textTheme.headline5,
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => GameDetailScreen()),
              //       );
              //     },
              //     child: const Text('Go back to home')
              // )
              // ListView(
              //   padding: const EdgeInsets.all(8),
                for (var _matchGame in _matchGameList) MatchWidget(matchGame: _matchGame)
              // )
            ],
          )
      ),
    );
  }
}