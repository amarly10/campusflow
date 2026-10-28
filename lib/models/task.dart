
class Task {
  final int id;
  final String title;
  final bool isCompleted;

  Task({
    required this.id,
    required this.title,
    this.isCompleted = false,
  });

  Task copyWith({
    int? id,
    String? title,
    bool? isCompleted,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  // JSON vers objet Dart
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'] as int,
      title: json['title'] as String,
      isCompleted: json['isCompleted'] as bool,
    );
  }

  // Objet Dart vers JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'isCompleted': isCompleted,
    };
  }
}
