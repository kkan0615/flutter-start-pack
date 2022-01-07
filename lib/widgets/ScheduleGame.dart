import 'package:flutter/material.dart';
import 'package:flutter_start_pack/api/Match.dart';
import 'package:flutter_start_pack/screens/Details/ScheduleGameDetail.dart';
import 'package:intl/intl.dart';


class GameScheduleWidget extends StatefulWidget {
  final GameSchedule gameSchedule;
  const GameScheduleWidget({required this.gameSchedule, Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _GameScheduleWidget();

}

class _GameScheduleWidget extends State<GameScheduleWidget> {
  String formattedDate = '';

  @override
  void initState() {
    super.initState();
    formattedDate = DateFormat('kk:mm').format(widget.gameSchedule.dateTime);
  }

  void _onPressDetailBtn() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const GameDetailScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  formattedDate,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ),
              Expanded(
                flex: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.network(widget.gameSchedule.home.imgPath,
                            height: 25,
                          ),
                          const SizedBox(width: 8),
                          Text(widget.gameSchedule.home.abbreviation,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          ),
                        ],
                      )
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('2',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(width: 2),
                          Text('vs',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                          SizedBox(width: 2),
                          Text('0',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                          ),),
                        ],
                      )
                    ),
                    Expanded(
                        child: Row(
                          children: [
                          Image.network(widget.gameSchedule.away.imgPath,
                            height: 25,
                          ),
                          const SizedBox(width: 8),
                          Text(widget.gameSchedule.away.abbreviation,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    )
                  ],
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: _onPressDetailBtn,
                  child: const Text("Detail"),
                ),
              )
            ]
        ),
      ),
    );
  }
}