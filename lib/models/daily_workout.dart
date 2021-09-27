import 'workout.dart';

class DailyWorkout{
  final String focus;
  final List<dynamic> workouts;

  DailyWorkout(this.focus, this.workouts);

  factory DailyWorkout.fromJSON(Map<String,dynamic> json){
    var workouts = json['lifts'].map((e) => Workout.fromJSON(e) ).toList();
    return DailyWorkout(json['focus'], workouts);
  }

}