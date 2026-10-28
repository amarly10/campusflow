
class Course {
  final int id;
  final String name;
  final String teacher;

  Course({
    required this.id,
    required this.name,
    required this.teacher,
  });

  Course copyWith({
    int? id,
    String? name,
    String? teacher,
  }) {
    return Course(
      id: id ?? this.id,
      name: name ?? this.name,
      teacher: teacher ?? this.teacher,
    );
  }

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'] as int,
      name: json['name'] as String,
      teacher: json['teacher'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'teacher': teacher,
    };
  }
}
