// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_filter_chips_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostsFilterChipsState {
  List<String> get menuList => throw _privateConstructorUsedError;
  String get selectedValue => throw _privateConstructorUsedError;
  void Function(String) get onPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsFilterChipsStateCopyWith<PostsFilterChipsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsFilterChipsStateCopyWith<$Res> {
  factory $PostsFilterChipsStateCopyWith(PostsFilterChipsState value,
          $Res Function(PostsFilterChipsState) then) =
      _$PostsFilterChipsStateCopyWithImpl<$Res, PostsFilterChipsState>;
  @useResult
  $Res call(
      {List<String> menuList,
      String selectedValue,
      void Function(String) onPressed});
}

/// @nodoc
class _$PostsFilterChipsStateCopyWithImpl<$Res,
        $Val extends PostsFilterChipsState>
    implements $PostsFilterChipsStateCopyWith<$Res> {
  _$PostsFilterChipsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuList = null,
    Object? selectedValue = null,
    Object? onPressed = null,
  }) {
    return _then(_value.copyWith(
      menuList: null == menuList
          ? _value.menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function(String),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostsFilterChipsStateImplCopyWith<$Res>
    implements $PostsFilterChipsStateCopyWith<$Res> {
  factory _$$PostsFilterChipsStateImplCopyWith(
          _$PostsFilterChipsStateImpl value,
          $Res Function(_$PostsFilterChipsStateImpl) then) =
      __$$PostsFilterChipsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> menuList,
      String selectedValue,
      void Function(String) onPressed});
}

/// @nodoc
class __$$PostsFilterChipsStateImplCopyWithImpl<$Res>
    extends _$PostsFilterChipsStateCopyWithImpl<$Res,
        _$PostsFilterChipsStateImpl>
    implements _$$PostsFilterChipsStateImplCopyWith<$Res> {
  __$$PostsFilterChipsStateImplCopyWithImpl(_$PostsFilterChipsStateImpl _value,
      $Res Function(_$PostsFilterChipsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuList = null,
    Object? selectedValue = null,
    Object? onPressed = null,
  }) {
    return _then(_$PostsFilterChipsStateImpl(
      menuList: null == menuList
          ? _value._menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function(String),
    ));
  }
}

/// @nodoc

class _$PostsFilterChipsStateImpl extends _PostsFilterChipsState {
  _$PostsFilterChipsStateImpl(
      {required final List<String> menuList,
      required this.selectedValue,
      required this.onPressed})
      : _menuList = menuList,
        super._();

  final List<String> _menuList;
  @override
  List<String> get menuList {
    if (_menuList is EqualUnmodifiableListView) return _menuList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuList);
  }

  @override
  final String selectedValue;
  @override
  final void Function(String) onPressed;

  @override
  String toString() {
    return 'PostsFilterChipsState(menuList: $menuList, selectedValue: $selectedValue, onPressed: $onPressed)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsFilterChipsStateImplCopyWith<_$PostsFilterChipsStateImpl>
      get copyWith => __$$PostsFilterChipsStateImplCopyWithImpl<
          _$PostsFilterChipsStateImpl>(this, _$identity);
}

abstract class _PostsFilterChipsState extends PostsFilterChipsState {
  factory _PostsFilterChipsState(
          {required final List<String> menuList,
          required final String selectedValue,
          required final void Function(String) onPressed}) =
      _$PostsFilterChipsStateImpl;
  _PostsFilterChipsState._() : super._();

  @override
  List<String> get menuList;
  @override
  String get selectedValue;
  @override
  void Function(String) get onPressed;
  @override
  @JsonKey(ignore: true)
  _$$PostsFilterChipsStateImplCopyWith<_$PostsFilterChipsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
