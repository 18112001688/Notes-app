import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
part 'note_model.g.dart';

// every class  have an shouldid
@HiveType(typeId: 1)
class NoteModel extends HiveObject {
// every varible takes a unique key
  @HiveField(0)
  String title;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;

  NoteModel({
    required this.subTitle,
    required this.title,
    required this.date,
    required this.color,
  });

  String getFormattedDate() {
    // Convert the 'date' string to DateTime object
    DateTime dateTime = DateTime.parse(date);
    // Create a DateFormat object with the desired format
    DateFormat formatter = DateFormat('MMM dd, yyyy');
    // Format the date using the formatter
    String formattedDate = formatter.format(dateTime);
    return formattedDate;
  }
}
