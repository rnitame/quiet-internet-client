import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gap/gap.dart';

part 'posts_filter_chips_delegate.freezed.dart';

class PostsFilterChipsDelegate extends SliverPersistentHeaderDelegate {
  const PostsFilterChipsDelegate({
    required this.height,
    required this.chipStates,
  });

  final int height;
  final List<PostsFilterChipsState> chipStates;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    // https://github.com/flutter/flutter/issues/78748#issuecomment-1495983007
    return SizedBox(
      height: height.toDouble(),
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
                return PopupMenuItem(value: menu, child: Text(menu));
              }).toList();
            },
            onSelected: onPressed,
            child: Chip(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              labelPadding: const EdgeInsets.symmetric(horizontal: 1),
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
    );
  }

  @override
  double get maxExtent => height.toDouble();

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(PostsFilterChipsDelegate oldDelegate) =>
      chipStates != oldDelegate.chipStates && height != oldDelegate.height;
}

@freezed
class PostsFilterChipsState with _$PostsFilterChipsState {
  factory PostsFilterChipsState({
    required List<String> menuList,
    required String selectedValue,
    required void Function(String) onPressed,
  }) = _PostsFilterChipsState;
}
