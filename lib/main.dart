import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quick_internet_client/router.dart';

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
        brightness: Brightness.light,
        colorSchemeSeed: Colors.white,
        useMaterial3: true,
      ),
      routerConfig: GoRouter(
        initialLocation: const HomeRoute().location,
        debugLogDiagnostics: true,
        routes: $appRoutes,
      ),
    );
  }
}
