
import 'dart:convert';

class UserModel {
  final String name;
  final String uid;
  final String aadharNumber;
  final String phoneNumber;
  final String schoolName;
  final String houseName;
  final String profileImage;
  UserModel({
    required this.name,
    required this.uid,
    required this.aadharNumber,
    required this.phoneNumber,
    required this.schoolName,
    required this.houseName,
    required this.profileImage,
  });

  UserModel copyWith({
    String? name,
    String? uid,
    String? aadharNumber,
    String? phoneNumber,
    String? schoolName,
    String? houseName,
    String? profileImage,
  }) {
    return UserModel(
      name: name ?? this.name,
      uid: uid ?? this.uid,
      aadharNumber: aadharNumber ?? this.aadharNumber,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      schoolName: schoolName ?? this.schoolName,
      houseName: houseName ?? this.houseName,
      profileImage: profileImage ?? this.profileImage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'uid': uid,
      'aadharNumber': aadharNumber,
      'phoneNumber': phoneNumber,
      'schoolName': schoolName,
      'houseName': houseName,
      'profileImage': profileImage,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      uid: map['uid'] as String,
      aadharNumber: map['aadharNumber'] as String,
      phoneNumber: map['phoneNumber'] as String,
      schoolName: map['schoolName'] as String,
      houseName: map['houseName'] as String,
      profileImage: map['profileImage'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(name: $name, uid: $uid, aadharNumber: $aadharNumber, phoneNumber: $phoneNumber, schoolName: $schoolName, houseName: $houseName, profileImage: $profileImage)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.uid == uid &&
      other.aadharNumber == aadharNumber &&
      other.phoneNumber == phoneNumber &&
      other.schoolName == schoolName &&
      other.houseName == houseName &&
      other.profileImage == profileImage;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      uid.hashCode ^
      aadharNumber.hashCode ^
      phoneNumber.hashCode ^
      schoolName.hashCode ^
      houseName.hashCode ^
      profileImage.hashCode;
  }
}
