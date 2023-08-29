import 'package:hive_flutter/adapters.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject{
  @HiveField(0)
  final String titel;
  @HiveField(1)
  final String descrebtion;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({required this.titel, required this.descrebtion, required this.date, required this.color});
}