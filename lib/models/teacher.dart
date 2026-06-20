import 'package:hive_flutter/adapters.dart';
import 'package:uuid/uuid.dart';

part 'teacher.g.dart';

final uuid = Uuid();

@HiveType(typeId: 0)
class Teacher {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String phone;
  @HiveField(3)
  final String email;
  @HiveField(4)
  final String department;

  Teacher(
      {required this.name, required this.phone, required this.department, required this.email})
      : id = uuid.v4();
}




// @HiveField(5)
// @override
// String toString() {
//     return
//       """
//       TeacherName: $this.name,
//       Department: $this.department,
//       Phone: $this.phone,
//       Email: $this.email,
//       """;
//   }