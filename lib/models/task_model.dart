import 'package:flutter/material.dart';

class TaskMod{
  final String name;
  final String category;
  final DateTime date;
  final TimeOfDay time;
  final int priority;
  final String description;

  TaskMod({
    required this.name,
    required this.category,
    required this.date,
    required this.time,
    required this.priority,
    required this.description
  });

  factory TaskMod.fromJson(Map<String, dynamic> json) => TaskMod(
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

  String priorityAsString() {
    if (priority == 1) {
      return "Low Priority";
    }
    if (priority == 2) {
      return "Medium Priority";
    }
    return "High Priority";
  }

  String dateAsString() {
    return "${date.month}/${date.day}/${date.year}";
  }

  @override
  String toString() {
    return "name:$name\ncategory:$category\ndate:${dateAsString()}\npriority:${priorityAsString()}\n";
  }
} 
