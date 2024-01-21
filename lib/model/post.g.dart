// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$PostImpl',
      json,
      ($checkedConvert) {
        final val = _$PostImpl(
          slug: $checkedConvert('slug', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          bodyCharacterCount:
              $checkedConvert('bodyCharacterCount', (v) => v as int),
          visibility: $checkedConvert(
              'visibility', (v) => $enumDecode(_$PostVisibilityEnumMap, v)),
          tags: $checkedConvert('tags',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          bodyMarkdown: $checkedConvert('bodyMarkdown', (v) => v as String?),
          bodyHtml: $checkedConvert('bodyHtml', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'title': instance.title,
      'bodyCharacterCount': instance.bodyCharacterCount,
      'visibility': _$PostVisibilityEnumMap[instance.visibility]!,
      'tags': instance.tags,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'bodyMarkdown': instance.bodyMarkdown,
      'bodyHtml': instance.bodyHtml,
    };

const _$PostVisibilityEnumMap = {
  PostVisibility.myself: 'MYSELF',
  PostVisibility.anyone: 'ANYONE',
  PostVisibility.all: '',
};
