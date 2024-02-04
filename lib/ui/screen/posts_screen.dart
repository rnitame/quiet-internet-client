import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quick_internet_client/data/quiet_internet_api_error.dart';
import 'package:quick_internet_client/extension/enum_ext.dart';
import 'package:quick_internet_client/logger.dart';
import 'package:quick_internet_client/model/direction.dart';
import 'package:quick_internet_client/model/post_provider.dart';
import 'package:quick_internet_client/model/post_visibility.dart';
import 'package:quick_internet_client/model/posts_filter_chips_state.dart';
import 'package:quick_internet_client/model/sort.dart';
import 'package:quick_internet_client/router.dart';
import 'package:quick_internet_client/ui/screen/error_screen.dart';
import 'package:quick_internet_client/ui/widget/loading.dart';
import 'package:quick_internet_client/ui/widget/post_card.dart';
import 'package:quick_internet_client/ui/widget/quiet_internet_logo.dart';

class PostsScreen extends HookConsumerWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      postsProvider.call(
        1,
        20,
      ),
    );
    final sort = ref.watch(postsFilterSortNotifierProvider);
    final direction = ref.watch(postsFilterDirectionNotifierProvider);
    final visibility = ref.watch(postsFilterVisibilityNotifierProvider);
    final chipStates = [
      PostsFilterChipsState(
        menuList: Sort.values.map((e) => e.value).toList(),
        selectedValue: sort.value,
        onPressed: (value) {
          final sort = Sort.values.byNameIgnoreCase(value);
          ref.read(postsFilterSortNotifierProvider.notifier).update(sort);
        },
      ),
      PostsFilterChipsState(
        menuList: Direction.values.map((e) => e.value).toList(),
        selectedValue: direction.value,
        onPressed: (value) {
          final direction = Direction.values.byNameIgnoreCase(value);
          ref
              .read(postsFilterDirectionNotifierProvider.notifier)
              .update(direction);
        },
      ),
      PostsFilterChipsState(
        menuList: PostVisibility.values.map((e) => e.value).toList(),
        selectedValue: visibility.value,
        onPressed: (value) {
          final visibility = PostVisibility.values.byNameIgnoreCase(value);
          ref
              .read(postsFilterVisibilityNotifierProvider.notifier)
              .update(visibility);
        },
      ),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 100,
            pinned: true,
            title: Column(
              children: [
                quietInternetLogo,
                const Gap(8),
                SizedBox(
                  height: 40,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: chipStates.length,
                    itemBuilder: (context, index) {
                      final state = chipStates[index];
                      final selectedValue = state.selectedValue;
                      final menuList = state.menuList;
                      final onPressed = state.onPressed;

                      return PopupMenuButton<String>(
                        itemBuilder: (BuildContext context) {
                          return menuList.map((menu) {
                            return PopupMenuItem(
                              value: menu,
                              child: Text(menu),
                            );
                          }).toList();
                        },
                        onSelected: onPressed,
                        child: Chip(
                          key: ValueKey(index),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 1),
                          label: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(selectedValue),
                              const Icon(
                                Icons.expand_more,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Gap(8);
                    },
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                state.when(
                  data: (posts) {
                    return posts
                        .map(
                          (post) => PostCard(
                            key: ValueKey(post.slug),
                            post: post,
                            onTap: () {
                              PostDetailRoute(slug: post.slug)
                                  .push<void>(context);
                            },
                          ),
                        )
                        .toList();
                  },
                  error: (Object error, StackTrace stackTrace) {
                    logger.e(error.toString());
                    return [ErrorScreen(error: error as QuietInternetApiError)];
                  },
                  loading: () => [loading],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
