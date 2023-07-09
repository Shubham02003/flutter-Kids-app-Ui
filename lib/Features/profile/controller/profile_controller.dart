import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_task1/Features/profile/repository/profile_repository.dart';
import 'package:flutter_ui_task1/Models/user_model.dart';

final profileControllerProvider = Provider(
  (ref) => ProfileController(
    profileRepository: ref.read(
      profileRepositoryProvider,
    ),
  ),
);

class ProfileController {
  final ProfileRepository _profileRepository;
  ProfileController({required ProfileRepository profileRepository})
      : _profileRepository = profileRepository;

  UserModel getUserData() {
    return _profileRepository.getUserData();
  }
}
