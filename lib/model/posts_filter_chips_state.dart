import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_filter_chips_state.freezed.dart';

@freezed
class PostsFilterChipsState with _$PostsFilterChipsState {
  factory PostsFilterChipsState({
    required List<String> menuList,
    required String selectedValue,
    required void Function(String) onPressed,
  }) = _PostsFilterChipsState;

  /// https://github.com/rrousselGit/freezed?tab=readme-ov-file#adding-getters-and-methods-to-our-models
  const PostsFilterChipsState._();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is PostsFilterChipsState) {
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
