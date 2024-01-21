import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_internet_client/ui/screen/post_detail_screen.dart';
import 'package:quick_internet_client/ui/screen/posts_screen.dart';

part 'router.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PostsScreen();
}

@TypedGoRoute<PostDetailRoute>(path: '/posts/:slug')
class PostDetailRoute extends GoRouteData {
  const PostDetailRoute({required this.slug});

  final String slug;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      PostDetailScreen(slug: slug);
}
