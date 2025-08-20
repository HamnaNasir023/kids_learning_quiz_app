// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Questions {
  int categoryId;
//  int questionId;
  String imagePath;
  List<String> options;
  int correctIndex;
  Questions({
    required this.categoryId,
    required this.imagePath,
    required this.options,
    required this.correctIndex,
  });

  Questions copyWith({
    int? questionId,
    String? imagePath,
    List<String>? options,
    int? correctIndex,
  }) {
    return Questions(
      categoryId: questionId ?? this.categoryId,
      imagePath: imagePath ?? this.imagePath,
      options: options ?? this.options,
      correctIndex: correctIndex ?? this.correctIndex,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'questionId': categoryId,
      'imagePath': imagePath,
      'options': options,
      'correctIndex': correctIndex,
    };
  }

  factory Questions.fromMap(Map<String, dynamic> map) {
    return Questions(
      categoryId: map['questionId'] as int,
      imagePath: map['imagePath'] as String,
      options: List<String>.from((map['options'] as List<String>)),
      correctIndex: map['correctIndex'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Questions.fromJson(String source) =>
      Questions.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Questions(questionId: $categoryId, imagePath: $imagePath, options: $options, correctIndex: $correctIndex)';
  }

  @override
  bool operator ==(covariant Questions other) {
    if (identical(this, other)) return true;

    return other.categoryId == categoryId &&
        other.imagePath == imagePath &&
        listEquals(other.options, options) &&
        other.correctIndex == correctIndex;
  }

  @override
  int get hashCode {
    return categoryId.hashCode ^
        imagePath.hashCode ^
        options.hashCode ^
        correctIndex.hashCode;
  }
}
