
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_task1/Models/user_model.dart';


final profileRepositoryProvider = Provider((ref) => ProfileRepository());


class ProfileRepository{
  UserModel getUserData() {
    return UserModel(
      name: 'Riya Patil',
      uid: '1',
      aadharNumber: 'xxxx xxxx xxxx',
      phoneNumber: 'xx xxxxx xxxxx',
      schoolName: 'Abc School',
      profileImage: 'assets/images/profile_photo.jpg',
      houseName: 'Red House',
    );
  }
}