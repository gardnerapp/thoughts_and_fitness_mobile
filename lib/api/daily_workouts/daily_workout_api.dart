import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:thoughts_and_fitness/models/daily_workout.dart';

class DailyWorkoutAPI{
  var headers = {"Content-Type": "application/json; charset=UTF-8"};

  var url =
      Uri.parse("https://thoughtsandfitness.com/api/v1/daily_workouts/show");

  Future<DailyWorkout> getDailyWorkout() async {
    http.Response response = await http.get(url);

    return DailyWorkout.fromJSON(jsonDecode(response.body));
  }
}