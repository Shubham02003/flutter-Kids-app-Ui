import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_task1/Features/leaderBoard/repository/leader_board_repository.dart';
import 'package:flutter_ui_task1/Models/leader_board_model.dart';

final leaderBoardControllerProvider = Provider((ref) => LeaderBoardController(
    leaderBoardRepository: ref.read(leaderBoardRepositoryProvider)));

class LeaderBoardController {
  final LeaderBoardRepository _leaderBoardRepository;
  LeaderBoardController({required LeaderBoardRepository leaderBoardRepository})
      : _leaderBoardRepository = leaderBoardRepository;
  List<LeaderBoardModel> getLeaderBoard() {
    return _leaderBoardRepository.getLeaderBoard();
  }
}
