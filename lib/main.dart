import 'package:flutter/material.dart';
import 'package:thoughts_and_fitness/api/daily_workouts/daily_workout_api.dart';
import 'package:thoughts_and_fitness/daily_workout_table.dart';

// TODO FLoating Action Button linking to subscribe
// Add Page View With Thoughts, Stretches, drawer w logo

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(elevation: 16.0),
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              elevation: 16.0,
              shadowColor: Colors.red),
          primaryColor: Colors.red),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var dailyWorkoutAPI = DailyWorkoutAPI();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Thoughts & Fitness",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: FutureBuilder(
            future: dailyWorkoutAPI.getDailyWorkout(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return DailyWorkoutTable(
                  dailyWorkout: snapshot.data,
                );
              } else if (snapshot.hasError || !snapshot.hasData) {}
              return Container(
                  height: 100.0,
                  child: Center(child: CircularProgressIndicator()));
            }));
  }
}
