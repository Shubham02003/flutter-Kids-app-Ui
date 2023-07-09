import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_task1/Models/leader_board_model.dart';
final  leaderBoardRepositoryProvider=Provider((ref) => LeaderBoardRepository());
class LeaderBoardRepository {
  List<LeaderBoardModel> getLeaderBoard() {
    return [
      LeaderBoardModel(points: 1020, houseName: 'Red House'),
      LeaderBoardModel(points: 1094, houseName: 'Yellow House'),
      LeaderBoardModel(points: 1093, houseName: 'Blue House'),
      LeaderBoardModel(points: 1000, houseName: 'Green House'),
    ];
  }
}
