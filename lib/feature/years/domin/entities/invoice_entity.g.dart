// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InvoiceEntityAdapter extends TypeAdapter<InvoiceEntity> {
  @override
  final int typeId = 3;

  @override
  InvoiceEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InvoiceEntity(
      id: fields[0] as String?,
      title: fields[1] as String,
      price: fields[2] as double,
      location: fields[3] as String,
      notes: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, InvoiceEntity obj) {
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
      other is InvoiceEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
