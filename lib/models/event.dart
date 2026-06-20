import 'package:hive_flutter/adapters.dart';
import 'package:university_time/models/time.dart';
import 'package:uuid/uuid.dart';

part 'event.g.dart';

final uuid = Uuid();


@HiveType(typeId: 0)
class Event {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String message;
  @HiveField(2)
  final DateTime notifyTime;
  @HiveField(3)
  final Time time;
  @HiveField(4)
  final EventType type;

  Event(this.type, {required this.message, required this.notifyTime, required this.time})
    : id = uuid.v4();
}

enum EventType {quiz, assignment, exam, presentation, labReport}