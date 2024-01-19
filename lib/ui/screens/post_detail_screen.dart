import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quick_internet_client/extensions/build_context_ext.dart';
import 'package:quick_internet_client/extensions/datetime_ext.dart';
import 'package:quick_internet_client/logger.dart';
import 'package:quick_internet_client/model/post_provider.dart';
import 'package:quick_internet_client/ui/screens/error_screen.dart';
import 'package:quick_internet_client/ui/widgets/loading.dart';

class PostDetailScreen extends HookConsumerWidget {
  const PostDetailScreen({super.key, required this.slug});

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
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    title: Text(post.title),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        Text(post.updatedAt.toYYMMDDString()),
                        Text('${post.bodyCharacterCount} 文字'),
                        Markdown(
                          styleSheetTheme: MarkdownStyleSheetBaseTheme.material,
                          data: post.bodyMarkdown ?? '',
                          shrinkWrap: true,
                          onTapLink: (text, href, title) {
                            if (href != null) {
                              context.launchUrl(href);
                            }
                          },
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            );
          },
          error: (err, stack) {
            logger.e(err);

            return ErrorScreen(errorMessage: err.toString());
          },
          loading: () => loading,
        );
  }
}
