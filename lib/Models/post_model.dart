
import 'dart:convert';

class PostModel {
  final String name;
  final String uid;
   final String schoolName;
  final String postImage;
  final String profileImage;
  final int upvotes;
  final String houseName;
  final String description;
  PostModel({
    required this.name,
    required this.uid,
    required this.schoolName,
    required this.postImage,
    required this.profileImage,
    required this.upvotes,
    required this.houseName,
    required this.description
  });


  PostModel copyWith({
    String? name,
    String? uid,
    String? schoolName,
    String? postImage,
    String? profileImage,
    int? upvotes,
    String? houseName,
    String? description
  }) {
    return PostModel(
      name: name ?? this.name,
      uid: uid ?? this.uid,
      schoolName: schoolName ?? this.schoolName,
      postImage: postImage ?? this.postImage,
      profileImage: profileImage ?? this.profileImage,
      upvotes: upvotes ?? this.upvotes,
      houseName: houseName ?? this.houseName,
      description: description?? this.description
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'uid': uid,
      'schoolName': schoolName,
      'postImage': postImage,
      'profileImage': profileImage,
      'upvotes': upvotes,
      'houseName': houseName,
      'description':description
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      name: map['name'] as String,
      uid: map['uid'] as String,
      schoolName: map['schoolName'] as String,
      postImage: map['postImage'] as String,
      profileImage: map['profileImage'] as String,
      upvotes: map['upvotes'] as int,
      houseName: map['houseName'] as String,
      description: map['description']as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) => PostModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PostModel(name: $name, uid: $uid, schoolName: $schoolName, postImage: $postImage, profileImage: $profileImage, upvotes: $upvotes, houseName: $houseName,description:$description)';
  }

  @override
  bool operator ==(covariant PostModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.uid == uid &&
      other.schoolName == schoolName &&
      other.postImage == postImage &&
      other.profileImage == profileImage &&
      other.upvotes == upvotes &&
      other.houseName == houseName&&
    other.description==description;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      uid.hashCode ^
      schoolName.hashCode ^
      postImage.hashCode ^
      profileImage.hashCode ^
      upvotes.hashCode ^
      houseName.hashCode^
    description.hashCode;
  }
}
