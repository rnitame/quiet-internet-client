import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'value')
enum PostVisibility {
  myself(value: 'MYSELF'),
  anyone(value: 'ANYONE'),
  ;

  const PostVisibility({required this.value});

  final String value;
}
