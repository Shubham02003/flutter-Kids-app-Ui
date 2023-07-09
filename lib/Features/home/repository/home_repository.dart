import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_task1/Models/event_model.dart';
import 'package:flutter_ui_task1/Models/post_model.dart';


final homeRepositoryProvider = Provider((ref) => HomeRepository());

class HomeRepository {

  List<PostModel> getTopPost() {
    return [
      PostModel(
          name: 'Ariya Pratap',
          uid: '1',
          schoolName: 'Mountain High',
          postImage: 'assets/images/top_performer.jpg',
          profileImage: 'assets/images/top_post_profile.jpg',
          upvotes: 22,
          houseName: 'Pegasus',
          description:
              'Witness the Unforgettable: Befold the mesmerizing dance moves that stole the spotlight in our recent Dance ......'),
      PostModel(
          name: 'Ariya Pratap',
          uid: '1',
          schoolName: 'Mountain High',
          postImage: 'assets/images/top_performer.jpg',
          profileImage: 'assets/images/top_post_profile.jpg',
          upvotes: 22,
          houseName: 'Pegasus',
          description:
              'Witness the Unforgettable: Befold the mesmerizing dance moves that stole the spotlight in our recent Dance ......'),
      PostModel(
          name: 'Ariya Pratap',
          uid: '1',
          schoolName: 'Mountain High',
          postImage: 'assets/images/top_performer.jpg',
          profileImage: 'assets/images/top_post_profile.jpg',
          upvotes: 22,
          houseName: 'Pegasus',
          description:
              'Witness the Unforgettable: Befold the mesmerizing dance moves that stole the spotlight in our recent Dance ......'),
      PostModel(
          name: 'Ariya Pratap',
          uid: '1',
          schoolName: 'Mountain High',
          postImage: 'assets/images/top_performer.jpg',
          profileImage: 'assets/images/top_post_profile.jpg',
          upvotes: 22,
          houseName: 'Pegasus',
          description:
              'Witness the Unforgettable: Befold the mesmerizing dance moves that stole the spotlight in our recent Dance ......'),
    ];
  }

  List<EventModel> getUpcomingEvents() {
    return [
      EventModel(
          eventName: 'Poetry Out Loud',
          eventStartDate: 'June 23',
          eventEndDate: 'June 24',
          eventBannerUrl: 'assets/images/upcoming_event.jpg',
          id: 1),
      EventModel(
          eventName: 'Poetry Out Loud',
          eventStartDate: 'June 23',
          eventEndDate: 'June 24',
          eventBannerUrl: 'assets/images/upcoming_event.jpg',
          id: 1),
      EventModel(
          eventName: 'Poetry Out Loud',
          eventStartDate: 'June 23',
          eventEndDate: 'June 24',
          eventBannerUrl: 'assets/images/upcoming_event.jpg',
          id: 1)
    ];
  }
}
