// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LeaderBoardModel {
  final int points;
  final String houseName;
  LeaderBoardModel({
    required this.points,
    required this.houseName,
  });
  

  LeaderBoardModel copyWith({
    int? points,
    String? houseName,
  }) {
    return LeaderBoardModel(
      points: points ?? this.points,
      houseName: houseName ?? this.houseName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'points': points,
      'houseName': houseName,
    };
  }

  factory LeaderBoardModel.fromMap(Map<String, dynamic> map) {
    return LeaderBoardModel(
      points: map['points'] as int,
      houseName: map['houseName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LeaderBoardModel.fromJson(String source) => LeaderBoardModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LeaderBoardModel(points: $points, houseName: $houseName)';

  @override
  bool operator ==(covariant LeaderBoardModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.points == points &&
      other.houseName == houseName;
  }

  @override
  int get hashCode => points.hashCode ^ houseName.hashCode;
}
