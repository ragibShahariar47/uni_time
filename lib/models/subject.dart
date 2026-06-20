import 'package:hive_flutter/adapters.dart';
import 'package:university_time/models/teacher.dart';
import 'package:uuid/uuid.dart';

part 'subject.g.dart';

final uuid = Uuid();

@HiveType(typeId: 0)
class Subject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String code;
  @HiveField(3)
  final int credit;
  @HiveField(4)
  final String type;
  @HiveField(5)
  final Teacher teacher;

  Subject(this.teacher,
      {required this.name, required this.code, required this.credit, required this.type})
      : id = uuid.v4();
}