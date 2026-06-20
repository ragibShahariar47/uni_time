// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:university_time/models/event.dart';
import 'package:university_time/models/subject.dart';
import 'package:university_time/models/teacher.dart';
import 'package:university_time/models/time.dart';

class HiveDatastore {
  static const teacherBoxName = 'teacherBox';
  static const subjectBoxName = 'subjectBox';
  static const timeBoxName = 'timeBox';
  static const eventBoxName = 'eventBox';

  Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter<Teacher>(TeacherAdapter());
    Hive.registerAdapter<Subject>(SubjectAdapter());
    Hive.registerAdapter<Time>(TimeAdapter());
    Hive.registerAdapter<Event>(EventAdapter());

    await Hive.openBox<Teacher>(teacherBoxName);
    await Hive.openBox<Subject>(subjectBoxName);
    await Hive.openBox<Time>(timeBoxName);
    await Hive.openBox<Event>(eventBoxName);
  }




//TEACHER BOX

  Future<void> setTeacher(Teacher teacher) async {
    final teacherBox = Hive.box<Teacher>(teacherBoxName);
    await teacherBox.put(teacher.id, teacher);
  }

  Future<void> deleteTeacher(String id) async {
    final teacherBox = Hive.box<Teacher>(teacherBoxName);
    await teacherBox.delete(id);
  }

  Future<Teacher?> getTeacher(String id) async {
    final teacherBox = Hive.box<Teacher>(teacherBoxName);
    return teacherBox.get(id);
  }

  Future<List<Teacher>?> getAllTeacher() async {
    final teacherBox = Hive.box<Teacher>(teacherBoxName);
    return teacherBox.values.toList();
  }

  ValueListenable <Box<Teacher>> teacherListenable(){
    return Hive.box<Teacher>(teacherBoxName).listenable();
  }




//SUBJECT BOX

  Future<void> setSubject(Subject subject) async {
    final subjectBox = Hive.box<Subject>(subjectBoxName);
    final subjectTeacher = await getTeacher(subject.teacher.id);
    if (subjectTeacher != null) {
      await setTeacher(subject.teacher);
    }
    await subjectBox.put(subject.id, subject);
  }

  Future<void> deleteSubject(String id) async {
    final subjectBox = Hive.box<Subject>(subjectBoxName);
    await subjectBox.delete(id);
  }

  Future<Subject?> getSubject(String id) async {
    final subjectBox = Hive.box<Subject>(subjectBoxName);
    return subjectBox.get(id);
  }

  Future<List<Subject>?> getAllSubject() async {
    final  subjectBox = Hive.box<Subject>(subjectBoxName);
    return subjectBox.values.toList();
  }

  ValueListenable <Box<Subject>> subjectListenable(){
    return Hive.box<Subject>(subjectBoxName).listenable();
  }




//TIME BOX

  Future<void> setTime(Time time) async {
    final timeBox = Hive.box<Time>(timeBoxName);
    await timeBox.put(time.id, time);
  }

  Future<void> deleteTime(String id) async {
    final timeBox = Hive.box<Time>(timeBoxName);
    await timeBox.delete(id);
  }

  Future<Time?> getTime(String id) async {
    final timeBox = Hive.box<Time>(timeBoxName);
    return timeBox.get(id);
  }

  Future<List<Time>?> getAllTime() async {
    final timeBox = Hive.box<Time>(timeBoxName);
    return timeBox.values.toList();
  }

  ValueListenable <Box<Time>> timeListenable(){
    return Hive.box<Time>(timeBoxName).listenable();
  }



//EVENT BOX

  Future<void> setEvent(Event event) async {
    final eventBox = Hive.box<Event>(eventBoxName);
    await eventBox.put(event.id, event);
  }

  Future<void> deleteEvent(String id) async {
    final eventBox = Hive.box<Event>(eventBoxName);
    await eventBox.delete(id);
  }

  Future<Event?> getEvent(String id) async {
    final eventBox = Hive.box<Event>(timeBoxName);
    return eventBox.get(id);
  }

  Future<List<Event>?> getAllEvent() async {
    final eventBox = Hive.box<Event>(eventBoxName);
    return eventBox.values.toList();
  }
  ValueListenable <Box<Event>> eventListenable(){
    return Hive.box<Event>(eventBoxName).listenable();
  }
}
