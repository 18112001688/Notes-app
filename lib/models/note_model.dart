import 'package:hive/hive.dart';
part 'note_model.g.dart';

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
}
