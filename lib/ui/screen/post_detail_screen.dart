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
                    Wrap(
                      spacing: 8,
                      children: post.tags
                          .map(
                            (tag) => Chip(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              labelPadding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              visualDensity: const VisualDensity(vertical: -4),
                              label: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.tag,
                                    size: 16,
                                  ),
                                  Text(tag),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Markdown(
                      controller: ScrollController(),
                      data: post.bodyMarkdown ?? '',
                      shrinkWrap: true,
                      onTapLink: (text, href, title) {
                        if (href != null) {
                          context.launchUrl(href);
                        }
                      },
                      imageBuilder: (uri, title, alt) {
                        return InkWell(
                          onTap: () {
                            showPreviewImage(context, uri);
                          },
                          child: Image.network(uri.toString()),
                        );
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

  Future<void> showPreviewImage(BuildContext context, Uri uri) {
    return showDialog(
      barrierDismissible: true,
      barrierColor: Colors.black87,
      context: context,
      builder: (context) {
        return Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InteractiveViewer(
                    child: Image.network(uri.toString()),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Material(
                  color: Colors.transparent,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
