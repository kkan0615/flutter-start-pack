import 'Team.dart';

class GameSchedule {
  Team home;
  Team away;
  DateTime dateTime;

  GameSchedule({
    required this.home,
    required this.away,
    required this.dateTime,
  });
}