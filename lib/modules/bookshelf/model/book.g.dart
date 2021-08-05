// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) {
  return Book(
    json['id'] as String,
    json['title'] as String,
    json['coverUrl'] as String,
    _$enumDecode(_$BookTypeEnumMap, json['bookType']),
  );
}

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'coverUrl': instance.coverUrl,
      'bookType': _$BookTypeEnumMap[instance.bookType],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$BookTypeEnumMap = {
  BookType.ADVENTURE: 'ADVENTURE',
  BookType.SOURCEBOOK: 'SOURCEBOOK',
  BookType.EXTENDED: 'EXTENDED',
};
