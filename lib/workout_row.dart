import 'package:flutter/material.dart';
import 'package:thoughts_and_fitness/table_styles.dart';

import 'models/workout.dart';

TableRow workoutRow(Workout workout){
  return TableRow(children: [
    tableCell(workout.name),
    tableCell(workout.sets == null ? "1" : workout.sets.toString()),
    tableCell(workout.reps == null ? "~" : workout.reps.toString()),
  ]);
}