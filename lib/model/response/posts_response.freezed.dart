// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostsResponse _$PostsResponseFromJson(Map<String, dynamic> json) {
  return _PostsResponse.fromJson(json);
}

/// @nodoc
mixin _$PostsResponse {
  List<Post> get posts => throw _privateConstructorUsedError;
  Pagination get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsResponseCopyWith<PostsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsResponseCopyWith<$Res> {
  factory $PostsResponseCopyWith(
          PostsResponse value, $Res Function(PostsResponse) then) =
      _$PostsResponseCopyWithImpl<$Res, PostsResponse>;
  @useResult
  $Res call({List<Post> posts, Pagination pagination});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$PostsResponseCopyWithImpl<$Res, $Val extends PostsResponse>
    implements $PostsResponseCopyWith<$Res> {
  _$PostsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostsResponseImplCopyWith<$Res>
    implements $PostsResponseCopyWith<$Res> {
  factory _$$PostsResponseImplCopyWith(
          _$PostsResponseImpl value, $Res Function(_$PostsResponseImpl) then) =
      __$$PostsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Post> posts, Pagination pagination});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$PostsResponseImplCopyWithImpl<$Res>
    extends _$PostsResponseCopyWithImpl<$Res, _$PostsResponseImpl>
    implements _$$PostsResponseImplCopyWith<$Res> {
  __$$PostsResponseImplCopyWithImpl(
      _$PostsResponseImpl _value, $Res Function(_$PostsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? pagination = null,
  }) {
    return _then(_$PostsResponseImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostsResponseImpl implements _PostsResponse {
  _$PostsResponseImpl(
      {required final List<Post> posts, required this.pagination})
      : _posts = posts;

  factory _$PostsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostsResponseImplFromJson(json);

  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final Pagination pagination;

  @override
  String toString() {
    return 'PostsResponse(posts: $posts, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsResponseImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_posts), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsResponseImplCopyWith<_$PostsResponseImpl> get copyWith =>
      __$$PostsResponseImplCopyWithImpl<_$PostsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostsResponseImplToJson(
      this,
    );
  }
}

abstract class _PostsResponse implements PostsResponse {
  factory _PostsResponse(
      {required final List<Post> posts,
      required final Pagination pagination}) = _$PostsResponseImpl;

  factory _PostsResponse.fromJson(Map<String, dynamic> json) =
      _$PostsResponseImpl.fromJson;

  @override
  List<Post> get posts;
  @override
  Pagination get pagination;
  @override
  @JsonKey(ignore: true)
  _$$PostsResponseImplCopyWith<_$PostsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
