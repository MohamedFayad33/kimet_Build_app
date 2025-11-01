// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MonthEntityAdapter extends TypeAdapter<MonthEntity> {
  @override
  final int typeId = 1;

  @override
  MonthEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MonthEntity(
      month: fields[1] as String,
      awhdas: (fields[2] as List?)?.cast<AwhdaEntity>(),
      invices: (fields[3] as List?)?.cast<InvoiceEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, MonthEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.month)
      ..writeByte(2)
      ..write(obj.awhdas)
      ..writeByte(3)
      ..write(obj.invices);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MonthEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
