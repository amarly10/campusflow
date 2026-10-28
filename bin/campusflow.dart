
import 'dart:convert';

import 'package:campusflow/models/task.dart';
import 'package:campusflow/models/course.dart';
import 'package:campusflow/models/user.dart';

// Simulation du chargement des données
Future<Task> chargerTask() async {
  await Future.delayed(const Duration(seconds: 2));

  final json = {
    'id': 1,
    'title': 'Faire le devoir Dart',
    'isCompleted': false,
  };

  return Task.fromJson(json);
}

void main() async {
  print('=== CAMPUSFLOW ===');

  print('Chargement de la tâche...');

  final task = await chargerTask();

  print('Tâche chargée : ${task.title}');

  // Conversion en JSON
  print('JSON Task : ${jsonEncode(task.toJson())}');

  // Création d'un cours
  final course = Course(
    id: 1,
    name: 'Programmation Dart',
    teacher: 'M. Ouédraogo',
  );

  print('JSON Course : ${jsonEncode(course.toJson())}');

  // Création d'un utilisateur
  final user = User(
    id: 1,
    name: 'Amina',
    email: 'amina@example.com',
  );

  print('JSON User : ${jsonEncode(user.toJson())}');

  // Test de copyWith
  final nouvelleTask = task.copyWith(
    isCompleted: true,
  );

  print('Tâche terminée : ${nouvelleTask.isCompleted}');
}
