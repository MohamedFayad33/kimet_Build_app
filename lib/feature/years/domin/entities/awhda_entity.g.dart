// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awhda_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AwhdaEntityAdapter extends TypeAdapter<AwhdaEntity> {
  @override
  final int typeId = 2;

  @override
  AwhdaEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AwhdaEntity(
      id: fields[0] as String?,
      title: fields[1] as String,
      price: fields[2] as double,
      location: fields[3] as String,
      notes: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AwhdaEntity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.location)
      ..writeByte(4)
      ..write(obj.date)
      ..writeByte(5)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AwhdaEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
