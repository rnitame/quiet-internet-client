import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:quick_internet_client/data/authorization_interceptor.dart';
import 'package:quick_internet_client/data/response/post_response.dart';
import 'package:quick_internet_client/data/response/posts_response.dart';
import 'package:quick_internet_client/model/direction.dart';
import 'package:quick_internet_client/model/post_visibility.dart';
import 'package:quick_internet_client/model/sort.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiet_internet_client.g.dart';

@RestApi(baseUrl: 'https://sizu.me/api/')
abstract class QuietInternetClient {
  factory QuietInternetClient(Dio dio, {String baseUrl}) = _QuietInternetClient;

  @GET('/v1/posts')
  Future<PostsResponse> getPosts({
    @Query('page') required int page,
    @Query('perPage') required int perPage,
    @Query('sort') Sort? sort,
    @Query('direction') Direction? direction,
    @Query('visibility') PostVisibility? postVisibility,
    @Query('createdAfter') String? createdAfter,
    @Query('createdBefore') String? createdBefore,
    @Query('updatedAfter') String? updatedAfter,
    @Query('updatedBefore') String? updatedBefore,
  });

  @GET('/v1/posts/{slug}')
  Future<PostResponse> getPost({
    @Path('slug') required String slug,
  });
}

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();
  final interceptors = [
    AuthorizationInterceptor(),
    PrettyDioLogger(),
  ];

  dio.options.receiveDataWhenStatusError = false;
  dio.interceptors.addAll(interceptors);
  return dio;
}

@riverpod
QuietInternetClient quietInternetClient(
  QuietInternetClientRef ref,
) {
  final dio = ref.watch(dioProvider);
  return QuietInternetClient(dio);
}
