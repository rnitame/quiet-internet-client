// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PaginationImpl',
      json,
      ($checkedConvert) {
        final val = _$PaginationImpl(
          currentPage: $checkedConvert('currentPage', (v) => v as int),
          nextPage: $checkedConvert('nextPage', (v) => v as int?),
          prevPage: $checkedConvert('prevPage', (v) => v as int?),
          perPage: $checkedConvert('perPage', (v) => v as int),
          sort: $checkedConvert('sort', (v) => $enumDecode(_$SortEnumMap, v)),
          direction: $checkedConvert(
              'direction', (v) => $enumDecode(_$DirectionEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'nextPage': instance.nextPage,
      'prevPage': instance.prevPage,
      'perPage': instance.perPage,
      'sort': _$SortEnumMap[instance.sort]!,
      'direction': _$DirectionEnumMap[instance.direction]!,
    };

const _$SortEnumMap = {
  Sort.created: 'created',
  Sort.updated: 'updated',
};

const _$DirectionEnumMap = {
  Direction.asc: 'asc',
  Direction.desc: 'desc',
};
