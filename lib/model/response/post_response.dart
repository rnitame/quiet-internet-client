import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quick_internet_client/model/post.dart';

part 'post_response.freezed.dart';

part 'post_response.g.dart';

@freezed
class PostResponse with _$PostResponse {
  factory PostResponse({
    required Post post,
  }) = _PostResponse;

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);
}
