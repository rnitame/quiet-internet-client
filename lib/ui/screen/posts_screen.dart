import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quick_internet_client/model/post_provider.dart';
import 'package:quick_internet_client/model/posts_filter_chip.dart';
import 'package:quick_internet_client/router.dart';
import 'package:quick_internet_client/ui/widget/empty.dart';
import 'package:quick_internet_client/ui/widget/loading.dart';
import 'package:quick_internet_client/ui/widget/post_card.dart';
import 'package:quick_internet_client/ui/widget/quiet_internet_logo.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

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
    final chips = [
      ref.watch(postsFilterSortChipProvider),
      ref.watch(postsFilterDirectionChipProvider),
      ref.watch(postsFilterVisibilityChipProvider),
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
                    itemCount: chips.length,
                    itemBuilder: (context, index) {
                      final chip = chips[index];
                      final selectedValue = chip.selectedValue;
                      final menuList = chip.menuList;
                      final onPressed = chip.onPressed;

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
          CupertinoSliverRefreshControl(
            onRefresh: () async {
              ref.invalidate(postsProvider);
            },
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverInfiniteList(
              itemCount: state.value?.length ?? 0,
              isLoading: state.isLoading,
              onFetchData: () {},
              separatorBuilder: (context, index) => const Gap(8),
              loadingBuilder: (context) => loading,
              centerLoading: true,
              itemBuilder: (context, index) {
                final posts = state.value;

                if (posts != null) {
                  final post = posts[index];

                  return PostCard(
                    key: ValueKey(post.slug),
                    post: post,
                    onTap: () {
                      PostDetailRoute(slug: post.slug).push<void>(context);
                    },
                  );
                } else {
                  return const Empty();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
