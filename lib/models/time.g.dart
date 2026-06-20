// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimeAdapter extends TypeAdapter<Time> {
  @override
  final int typeId = 0;

  @override
  Time read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Time(
      day: fields[1] as String,
      time: fields[2] as DateTime,
      subject: fields[3] as Subject,
    );
  }

  @override
  void write(BinaryWriter writer, Time obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.day)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.subject);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
