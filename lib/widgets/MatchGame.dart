import 'package:flutter/material.dart';
import 'package:flutter_start_pack/api/Match.dart';
import 'package:flutter_start_pack/screens/Details/MatchGameDetail.dart';
import 'package:intl/intl.dart';


class MatchWidget extends StatefulWidget {
  final MatchGame matchGame;
  const MatchWidget({required this.matchGame, Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MatchWidget();

}

class _MatchWidget extends State<MatchWidget> {
  String formattedDate = '';

  @override
  void initState() {
    super.initState();
    formattedDate = DateFormat('kk:mm a').format(widget.matchGame.dateTime);
  }

  void _onPressDetailBtn() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const GameDetailScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Row(
          children: <Widget>[
            Expanded(
                child: Text(formattedDate)
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network('https://picsum.photos/250?image=9',
                    height: 20,
                  ),
                  SizedBox(width: 5),
                  const Text('DRX',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(width: 10),
                  const Text('2',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                  SizedBox(width: 2),
                  const Text('vs',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),),
                  SizedBox(width: 2),
                  const Text('0',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                  SizedBox(width: 10),
                  Image.network('https://picsum.photos/250?image=9',
                    height: 20,
                  ),
                  SizedBox(width: 5),
                  const Text('LSB',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: _onPressDetailBtn,
                child: const Text("Detail"),
              ),
            )
          ]
      ),
    );
  }
}