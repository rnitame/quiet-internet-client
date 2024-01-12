import 'package:dio/dio.dart';
import 'package:quick_internet_client/data/authorization_interceptor.dart';
import 'package:quick_internet_client/model/direction.dart';
import 'package:quick_internet_client/model/post_visibility.dart';
import 'package:quick_internet_client/model/sort.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/post.dart';

part 'quiet_internet_client.g.dart';

@RestApi(baseUrl: 'https://sizu.me/api/')
abstract class QuietInternetClient {
  factory QuietInternetClient(Dio dio, {String baseUrl}) = _QuietInternetClient;

  @GET('/v1/posts')
  Future<HttpResponse<List<Post>>> getPosts({
    @Query('page') int page,
    @Query('perPage') int perPage,
    @Query('sort') Sort? sort,
    @Query('direction') Direction? direction,
    @Query('visibility') PostVisibility? postVisibility,
    @Query('createdAfter') String? createdAfter,
    @Query('createdBefore') String? createdBefore,
    @Query('updatedAfter') String? updatedAfter,
    @Query('updatedBefore') String? updatedBefore,
  });

  @GET('/v1/posts/{slug}')
  Future<HttpResponse<Post>> getPost({
    @Path('slug') String slug,
  });
}

@riverpod
Dio dio() {
  final dio = Dio();
  dio.interceptors.add(AuthorizationInterceptor());

  return dio;
}

@riverpod
QuietInternetClient quietInternetClient(
  QuietInternetClientRef ref,
) {
  final dio = ref.watch(dioProvider);
  return QuietInternetClient(dio);
}
