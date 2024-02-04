import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quick_internet_client/extension/enum_ext.dart';
import 'package:quick_internet_client/model/direction.dart';
import 'package:quick_internet_client/model/post_visibility.dart';
import 'package:quick_internet_client/model/sort.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'posts_filter_chip.freezed.dart';

part 'posts_filter_chip.g.dart';

@riverpod
PostsFilterChip postsFilterSortChip(
  PostsFilterSortChipRef ref,
) {
  final sort = ref.watch(postsFilterSortNotifierProvider);

  return PostsFilterChip(
    menuList: Sort.values.map((e) => e.value).toList(),
    selectedValue: sort.value,
    onPressed: (value) {
      final sort = Sort.values.byNameIgnoreCase(value);
      ref.read(postsFilterSortNotifierProvider.notifier).update(sort);
    },
  );
}

@riverpod
PostsFilterChip postsFilterDirectionChip(
  PostsFilterDirectionChipRef ref,
) {
  final direction = ref.watch(postsFilterDirectionNotifierProvider);

  return PostsFilterChip(
    menuList: Direction.values.map((e) => e.value).toList(),
    selectedValue: direction.value,
    onPressed: (value) {
      final direction = Direction.values.byNameIgnoreCase(value);
      ref.read(postsFilterDirectionNotifierProvider.notifier).update(direction);
    },
  );
}

@riverpod
PostsFilterChip postsFilterVisibilityChip(
  PostsFilterVisibilityChipRef ref,
) {
  final visibility = ref.watch(postsFilterVisibilityNotifierProvider);

  return PostsFilterChip(
    menuList: PostVisibility.values.map((e) => e.value).toList(),
    selectedValue: visibility.value,
    onPressed: (value) {
      final visibility = PostVisibility.values.byNameIgnoreCase(value);
      ref
          .read(postsFilterVisibilityNotifierProvider.notifier)
          .update(visibility);
    },
  );
}

@freezed
class PostsFilterChip with _$PostsFilterChip {
  factory PostsFilterChip({
    required List<String> menuList,
    required String selectedValue,
    required void Function(String) onPressed,
  }) = _PostsFilterChip;

  PostsFilterChip._();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is PostsFilterChip) {
      return runtimeType == other.runtimeType &&
          menuList == other.menuList &&
          selectedValue == other.selectedValue;
    } else {
      return false;
    }
  }

  @override
  int get hashCode =>
      super.hashCode + menuList.hashCode + selectedValue.hashCode;
}
