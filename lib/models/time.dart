import 'package:hive_flutter/adapters.dart';
import 'package:university_time/models/subject.dart';
import 'package:uuid/uuid.dart';

part 'time.g.dart';

final uuid = Uuid();

@HiveType(typeId: 0)
class Time {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String day;
  @HiveField(2)
  final DateTime time;
  @HiveField(3)
  final Subject subject;

  Time(
      {required this.day, required this.time, required this.subject})
      : id = uuid.v4();
}