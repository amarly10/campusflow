
import 'package:test/test.dart';
import 'package:campusflow/models/task.dart';

void main() {
  test('copyWith crée une copie modifiée', () {
    final task = Task(id: 1, title: 'Devoir');

    final copie = task.copyWith(isCompleted: true);

    expect(copie.isCompleted, true);
    expect(task.isCompleted, false);
  });

  test('fromJson crée correctement une tâche', () {
    final json = {
      'id': 1,
      'title': 'Révision',
      'isCompleted': false,
    };

    final task = Task.fromJson(json);

    expect(task.id, 1);
    expect(task.title, 'Révision');
  });
  

  test('fromJson détecte un id invalide', () {
    final json = {
      'id': 'incorrect',
      'title': 'Devoir',
      'isCompleted': false,
    };

    expect(
      () => Task.fromJson(json),
      throwsA(isA<TypeError>()),
    );
  });
}
