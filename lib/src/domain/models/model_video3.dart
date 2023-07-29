// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DataModelVideo3 {
  final String title;
  final String body;
  final int id;
  DataModelVideo3({
    required this.title,
    required this.body,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'body': body,
      'id': id,
    };
  }

  factory DataModelVideo3.fromMap(Map<String, dynamic> map) {
    return DataModelVideo3(
      title: map['title'] as String,
      body: map['body'] as String,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataModelVideo3.fromJson(String source) =>
      DataModelVideo3.fromMap(json.decode(source) as Map<String, dynamic>);
}
