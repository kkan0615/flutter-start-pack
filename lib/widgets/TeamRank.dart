import 'package:flutter/material.dart';
import 'package:flutter_start_pack/api/Team.dart';

class TeamRankWidget extends StatefulWidget {
  final Team team;
  const TeamRankWidget({required this.team, Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TeamRankWidget();

}

class _TeamRankWidget extends State<TeamRankWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const SizedBox(width: 8),
          Image.network(widget.team.imgPath,
            height: 40,
          ),
          const SizedBox(width: 8),
          Text(widget.team.abbreviation,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}