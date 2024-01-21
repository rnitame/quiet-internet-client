import 'package:dio/dio.dart';
import 'package:quick_internet_client/data/quiet_internet_api_error.dart';
import 'package:quick_internet_client/data/quiet_internet_client.dart';
import 'package:quick_internet_client/model/direction.dart';
import 'package:quick_internet_client/model/post.dart';
import 'package:quick_internet_client/model/post_visibility.dart';
import 'package:quick_internet_client/model/sort.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_provider.g.dart';

@riverpod
FutureOr<List<Post>> posts(
  PostsRef ref,
  int page,
  int perPage,
  Sort? sort,
  Direction? direction,
  PostVisibility? visibility,
) async {
  final api = ref.watch(quietInternetClientProvider);

  try {
    final response = await api.getPosts(
      page: page,
      perPage: perPage,
      sort: sort,
      direction: direction,
      postVisibility: visibility,
    );

    return response.posts;
  } on DioException catch (e) {
    throw QuietInternetApiError.fromStatus(
      e.response?.statusCode,
      e.response?.statusMessage ?? '',
    );
  }
}

@riverpod
FutureOr<Post> post(
  PostRef ref,
  String slug,
) async {
  final api = ref.watch(quietInternetClientProvider);

  try {
    final response = await api.getPost(slug: slug);
    return response.post;
  } on DioException catch (e) {
    throw QuietInternetApiError.fromStatus(
      e.response?.statusCode,
      e.response?.statusMessage ?? '',
    );
  }
}
