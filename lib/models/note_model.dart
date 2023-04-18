import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
part 'note_model.g.dart';

DateTime now = DateTime.now();

// every class  have an shouldid
@HiveType(typeId: 1)
class NoteModel extends HiveObject {
// every varible takes a unique key
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

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
