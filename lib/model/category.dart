import 'dart:convert';

class CategoryClass {
  int categoryId;
  String categoryName;

  CategoryClass({
    required this.categoryId,
    required this.categoryName,
  });

  CategoryClass copyWith({
    int? categoryId,
    String? categoryName,
  }) {
    return CategoryClass(
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': categoryId,
      'categoryName': categoryName,
    };
  }

  factory CategoryClass.fromMap(Map<String, dynamic> map) {
    return CategoryClass(
      categoryId: map['categoryId'] as int,
      categoryName: map['categoryName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryClass.fromJson(String source) =>
      CategoryClass.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'CategoryClass(categoryId: $categoryId, categoryName: $categoryName)';

  @override
  bool operator ==(covariant CategoryClass other) {
    if (identical(this, other)) return true;

    return other.categoryId == categoryId && other.categoryName == categoryName;
  }

  @override
  int get hashCode => categoryId.hashCode ^ categoryName.hashCode;
}
