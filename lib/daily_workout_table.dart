import 'package:flutter/material.dart';
import 'package:thoughts_and_fitness/models/daily_workout.dart';
import 'package:thoughts_and_fitness/table_styles.dart';
import 'package:thoughts_and_fitness/workout_row.dart';

class DailyWorkoutTable extends StatelessWidget {
  final DailyWorkout dailyWorkout;
  const DailyWorkoutTable({Key key, this.dailyWorkout}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   var workoutWidgets = dailyWorkout.workouts.map((e) => workoutRow(e)).toList();
    var tableHeader = TableRow(children: [
      tableCell("Lift"),
      tableCell("Sets"),
      tableCell("Reps"),
    ],);

   workoutWidgets.insert(0, tableHeader);

    return  Container(
      color: Colors.grey[200],
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${dailyWorkout.focus}",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w800,
                  fontSize: 50.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    border: TableBorder(
                        verticalInside: BorderSide(
                            width: 1,
                            color: Colors.black38,
                            style: BorderStyle.solid),
                        horizontalInside: BorderSide(
                            width: 1,
                            color: Colors.black38,
                            style: BorderStyle.solid)),
                    columnWidths: {
                      0: FixedColumnWidth(175),
                      1: FixedColumnWidth(75),
                      2: FixedColumnWidth(75),
                    },
                    children: workoutWidgets,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
