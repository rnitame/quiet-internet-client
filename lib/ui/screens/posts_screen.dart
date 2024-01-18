import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quick_internet_client/logger.dart';
import 'package:quick_internet_client/model/direction.dart';
import 'package:quick_internet_client/model/post_provider.dart';
import 'package:quick_internet_client/model/post_visibility.dart';
import 'package:quick_internet_client/model/sort.dart';
import 'package:quick_internet_client/router.dart';
import 'package:quick_internet_client/ui/screens/error_screen.dart';
import 'package:quick_internet_client/ui/widgets/loading.dart';
import 'package:quick_internet_client/ui/widgets/post_card.dart';
import 'package:quick_internet_client/ui/widgets/quiet_internet_logo.dart';

class PostsScreen extends HookConsumerWidget {
  const PostsScreen({super.key});

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
            return Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    toolbarHeight: 60,
                    pinned: true,
                    title: quietInternetLogo,
                  ),
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
