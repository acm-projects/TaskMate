import 'package:flutter/material.dart';

class Task{
  final String name;
  final String category;
  final DateTime date;
  final TimeOfDay time;
  final int priority;
  final String description;

  Task({
    required this.name,
    required this.category,
    required this.date,
    required this.time,
    required this.priority,
    required this.description
  });

  factory Task.fromJson(Map<String, dynamic> json) => Task(
    name: json["name"],
    category: json["category"],
    date: DateTime.fromMillisecondsSinceEpoch(json["date"]),
    time: TimeOfDay.fromDateTime(DateTime.fromMillisecondsSinceEpoch(json["time"])),
    priority: json["priority"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "category": category,
      "date": date.millisecondsSinceEpoch,
      "time": time.hour * Duration.millisecondsPerHour + time.minute * Duration.millisecondsPerMinute,
      "priority": priority,
      "description": description,
    };
  }
} 
