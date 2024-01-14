// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      slug: json['slug'] as String,
      title: json['title'] as String,
      bodyCharacterCount: json['bodyCharacterCount'] as int,
      visibility: $enumDecode(_$PostVisibilityEnumMap, json['visibility']),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      bodyMarkdown: json['bodyMarkdown'] as String?,
      bodyHtml: json['bodyHtml'] as String?,
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
  PostVisibility.myself: 'myself',
  PostVisibility.anyone: 'anyone',
};
