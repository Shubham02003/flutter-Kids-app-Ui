// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class EventModel {
  final String eventName;
  final String eventStartDate;
final String eventEndDate;
final String eventBannerUrl;
final int id;
  EventModel({
    required this.eventName,
    required this.eventStartDate,
    required this.eventEndDate,
    required this.eventBannerUrl,
    required this.id,
  });

  EventModel copyWith({
    String? eventName,
    String? eventStartDate,
    String? eventEndDate,
    String? eventBannerUrl,
    int? id,
  }) {
    return EventModel(
      eventName: eventName ?? this.eventName,
      eventStartDate: eventStartDate ?? this.eventStartDate,
      eventEndDate: eventEndDate ?? this.eventEndDate,
      eventBannerUrl: eventBannerUrl ?? this.eventBannerUrl,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventName': eventName,
      'eventStartDate': eventStartDate,
      'eventEndDate': eventEndDate,
      'eventBannerUrl': eventBannerUrl,
      'id': id,
    };
  }

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      eventName: map['eventName'] as String,
      eventStartDate: map['eventStartDate'] as String,
      eventEndDate: map['eventEndDate'] as String,
      eventBannerUrl: map['eventBannerUrl'] as String,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory EventModel.fromJson(String source) => EventModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EventModel(eventName: $eventName, eventStartDate: $eventStartDate, eventEndDate: $eventEndDate, eventBannerUrl: $eventBannerUrl, id: $id)';
  }

  @override
  bool operator ==(covariant EventModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.eventName == eventName &&
      other.eventStartDate == eventStartDate &&
      other.eventEndDate == eventEndDate &&
      other.eventBannerUrl == eventBannerUrl &&
      other.id == id;
  }

  @override
  int get hashCode {
    return eventName.hashCode ^
      eventStartDate.hashCode ^
      eventEndDate.hashCode ^
      eventBannerUrl.hashCode ^
      id.hashCode;
  }
}
