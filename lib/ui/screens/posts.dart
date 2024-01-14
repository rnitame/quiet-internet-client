import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quick_internet_client/logger.dart';
import 'package:quick_internet_client/model/direction.dart';
import 'package:quick_internet_client/model/post_provider.dart';
import 'package:quick_internet_client/model/post_visibility.dart';
import 'package:quick_internet_client/model/sort.dart';

class Posts extends HookConsumerWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(
          postsProvider.call(
            1,
            20,
            Sort.updated,
            Direction.desc,
            PostVisibility.anyone,
          ),
        )
        .when(
          data: (posts) {
            final slug = posts.first.slug;

            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(posts.isNotEmpty.toString()),
                    MaterialButton(
                      onPressed: () => context.push('/posts/$slug'),
                      child: const Text('詳細へ'),
                    ),
                  ],
                ),
              ),
            );
          },
          error: (err, stack) {
            logger.e(err);

            return Scaffold(
              appBar: AppBar(title: const Text('Error')),
              body: Center(
                child: Text('$err'),
              ),
            );
          },
          loading: () => const ColoredBox(
            color: Colors.white,
            child: Center(child: CircularProgressIndicator()),
          ),
        );
  }
}
