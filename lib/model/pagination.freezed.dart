// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  int get currentPage => throw _privateConstructorUsedError;
  int? get nextPage => throw _privateConstructorUsedError;
  int? get prevPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  Sort get sort => throw _privateConstructorUsedError;
  Direction get direction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {int currentPage,
      int? nextPage,
      int? prevPage,
      int perPage,
      Sort sort,
      Direction direction});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
    Object? perPage = null,
    Object? sort = null,
    Object? direction = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage,
      int? nextPage,
      int? prevPage,
      int perPage,
      Sort sort,
      Direction direction});
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
    Object? perPage = null,
    Object? sort = null,
    Object? direction = null,
  }) {
    return _then(_$PaginationImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationImpl implements _Pagination {
  _$PaginationImpl(
      {required this.currentPage,
      this.nextPage,
      this.prevPage,
      required this.perPage,
      required this.sort,
      required this.direction});

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

  @override
  final int currentPage;
  @override
  final int? nextPage;
  @override
  final int? prevPage;
  @override
  final int perPage;
  @override
  final Sort sort;
  @override
  final Direction direction;

  @override
  String toString() {
    return 'Pagination(currentPage: $currentPage, nextPage: $nextPage, prevPage: $prevPage, perPage: $perPage, sort: $sort, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.prevPage, prevPage) ||
                other.prevPage == prevPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentPage, nextPage, prevPage, perPage, sort, direction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  factory _Pagination(
      {required final int currentPage,
      final int? nextPage,
      final int? prevPage,
      required final int perPage,
      required final Sort sort,
      required final Direction direction}) = _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;

  @override
  int get currentPage;
  @override
  int? get nextPage;
  @override
  int? get prevPage;
  @override
  int get perPage;
  @override
  Sort get sort;
  @override
  Direction get direction;
  @override
  @JsonKey(ignore: true)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
