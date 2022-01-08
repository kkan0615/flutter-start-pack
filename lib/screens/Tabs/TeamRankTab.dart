import 'package:flutter/material.dart';
import 'package:flutter_start_pack/api/Team.dart';
import 'package:flutter_start_pack/screens/Details/ScheduleGameDetail.dart';
import 'package:flutter_start_pack/widgets/TeamRank.dart';

class TeamRankTab extends StatefulWidget {
  const TeamRankTab({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TeamRankTab();

}

class _TeamRankTab extends State<TeamRankTab> {
  void _onPressRow() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const GameDetailScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DataTable(
        columns: <DataColumn>[
          DataColumn(label: Text('#')),
          DataColumn(label: Text('Name'))
        ],
        rows: List<DataRow>.generate(
          SampleTeamList.length, (index) =>
            DataRow(
              cells: [
              DataCell(
                SizedBox(
                  width: 10,
                  child: Text('${index + 1}',
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                )
              ),
              DataCell(TeamRankWidget(team: SampleTeamList[index]))
            ])
        ),
      )
    );
  }
}