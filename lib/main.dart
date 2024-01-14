import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quick_internet_client/ui/screens/post_detail.dart';
import 'package:quick_internet_client/ui/screens/posts.dart';

void main() async {
  await dotenv.load();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Posts(),
    ),
    GoRoute(
      path: '/posts/:slug',
      builder: (context, state) => PostDetail(
        slug: state.pathParameters['slug'] ?? '',
      ),
    ),
  ],
);
