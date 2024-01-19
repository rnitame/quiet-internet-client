import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quick_internet_client/data/quiet_internet_api_error.dart';
import 'package:quick_internet_client/logger.dart';
import 'package:quick_internet_client/model/post_provider.dart';
import 'package:quick_internet_client/router.dart';
import 'package:quick_internet_client/ui/screen/error_screen.dart';
import 'package:quick_internet_client/ui/widget/empty.dart';
import 'package:quick_internet_client/ui/widget/loading.dart';
import 'package:quick_internet_client/ui/widget/post_card.dart';
import 'package:quick_internet_client/ui/widget/posts_filter_chips_delegate.dart';
import 'package:quick_internet_client/ui/widget/quiet_internet_logo.dart';

class PostsScreen extends HookConsumerWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      postsProvider.call(
        1,
        20,
        null,
        null,
        null,
      ),
    );

    return Scaffold(
      body: state.when(
        data: (posts) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                toolbarHeight: 60,
                pinned: true,
                title: quietInternetLogo,
              ),
              SliverPadding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                sliver: SliverPersistentHeader(
                  pinned: true,
                  delegate: PostsFilterChipsDelegate(
                    height: 40,
                    chipData: [
                      'Visibility',
                      'Direction',
                      'Sort',
                    ],
                    onChipPressed: (chip) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(chip)),
                      );
                    },
                  ),
                ),
              ),
              if (posts.isEmpty)
                const SliverFillRemaining(
                  child: Empty(),
                )
              else
                SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      posts
                          .map(
                            (post) => PostCard(
                              post: post,
                              onTap: () {
                                PostDetailRoute(slug: post.slug)
                                    .push<void>(context);
                              },
                            ),
                          )
                          .toList(),
                    ),
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
