// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostResponseImpl _$$PostResponseImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PostResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$PostResponseImpl(
          post: $checkedConvert(
              'post', (v) => Post.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PostResponseImplToJson(_$PostResponseImpl instance) =>
    <String, dynamic>{
      'post': instance.post,
    };
