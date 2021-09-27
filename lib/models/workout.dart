import 'dart:convert';

class Workout{
    final String name;
    final int sets;
  final int reps;

  Workout(this.name, this.sets, this.reps);

  factory Workout.fromJSON(Map<String, dynamic> json) =>
      Workout(json['lift'], json['sets'], json['reps']);
}