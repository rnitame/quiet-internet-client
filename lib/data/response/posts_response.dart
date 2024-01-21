import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quick_internet_client/model/pagination.dart';
import 'package:quick_internet_client/model/post.dart';

part 'posts_response.freezed.dart';

part 'posts_response.g.dart';

@freezed
class PostsResponse with _$PostsResponse {
  factory PostsResponse({
    required List<Post> posts,
    required Pagination pagination,
  }) = _PostsResponse;

  factory PostsResponse.fromJson(Map<String, dynamic> json) =>
      _$PostsResponseFromJson(json);
}
