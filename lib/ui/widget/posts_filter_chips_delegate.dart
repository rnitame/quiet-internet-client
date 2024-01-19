import 'package:flutter/material.dart';

class PostsFilterChipsDelegate extends SliverPersistentHeaderDelegate {
  const PostsFilterChipsDelegate({
    required this.height,
    required this.chipData,
    required this.onChipPressed,
  });

  final int height;
  final List<String> chipData;
  final void Function(String) onChipPressed;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    // https://github.com/flutter/flutter/issues/78748#issuecomment-1495983007
    return SizedBox(
      height: height.toDouble(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: chipData
            .map(
              (text) => ActionChip(
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(text),
                    const Icon(Icons.expand_more),
                  ],
                ),
                onPressed: () {
                  onChipPressed(text);
                },
              ),
            )
            .toList(),
      ),
    );
  }

  @override
  double get maxExtent => height.toDouble();

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(PostsFilterChipsDelegate oldDelegate) =>
      chipData != oldDelegate.chipData && height != oldDelegate.height;
}
