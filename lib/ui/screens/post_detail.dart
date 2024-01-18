import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quick_internet_client/logger.dart';
import 'package:quick_internet_client/model/post_provider.dart';

class PostDetail extends HookConsumerWidget {
  const PostDetail({super.key, required this.slug});

  final String slug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(
          postProvider.call(slug),
        )
        .when(
          data: (post) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Markdown(
                      data: post.bodyMarkdown ?? '',
                      shrinkWrap: true,
                    ),
                    MaterialButton(
                      onPressed: () => context.pop(),
                      child: const Text('戻る'),
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
