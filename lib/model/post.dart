import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quick_internet_client/model/post_visibility.dart';

part 'post.freezed.dart';

part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({
    required String slug,
    required String title,
    required int bodyCharacterCount,
    required PostVisibility visibility,
    required List<String> tags,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? bodyMarkdown,
    String? bodyHtml,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
