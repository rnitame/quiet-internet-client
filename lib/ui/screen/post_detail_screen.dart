import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quick_internet_client/data/quiet_internet_api_error.dart';
import 'package:quick_internet_client/extension/build_context_ext.dart';
import 'package:quick_internet_client/extension/datetime_ext.dart';
import 'package:quick_internet_client/logger.dart';
import 'package:quick_internet_client/model/post_provider.dart';
import 'package:quick_internet_client/ui/screen/error_screen.dart';
import 'package:quick_internet_client/ui/widget/loading.dart';

class PostDetailScreen extends HookConsumerWidget {
  const PostDetailScreen({super.key, required this.slug});

  final String slug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(postProvider.call(slug));

    return Scaffold(
      body: state.when(
        data: (post) {
          return CustomScrollView(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: post.tags
                          .map(
                            (tag) => Chip(
                              label: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.tag),
                                  Text(tag),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
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
          );
        },
        error: (err, stack) {
          logger.e(err.toString());

          return ErrorScreen(error: err as QuietInternetApiError);
        },
        loading: () => loading,
      ),
    );
  }
}
