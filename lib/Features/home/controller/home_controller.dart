import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_task1/Features/home/repository/home_repository.dart';
import 'package:flutter_ui_task1/Models/event_model.dart';
import 'package:flutter_ui_task1/Models/post_model.dart';


final homeControllerProvider = Provider(
  (ref) => HomeController(
    homeRepository: ref.watch(homeRepositoryProvider),
  ),
);

class HomeController {
  final HomeRepository _homeRepository;

  HomeController({required HomeRepository homeRepository})
      : _homeRepository = homeRepository;// loading


  List<PostModel> getTopPost(){
    return _homeRepository.getTopPost();
  }
  List<EventModel> getUpcomingEvents(){
    return _homeRepository.getUpcomingEvents();
  }
}
