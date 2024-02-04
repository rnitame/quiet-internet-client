// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postsHash() => r'4d299285451894463d19fd0eb692baac71988904';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [posts].
@ProviderFor(posts)
const postsProvider = PostsFamily();

/// See also [posts].
class PostsFamily extends Family<AsyncValue<List<Post>>> {
  /// See also [posts].
  const PostsFamily();

  /// See also [posts].
  PostsProvider call(
    int page,
    int perPage,
  ) {
    return PostsProvider(
      page,
      perPage,
    );
  }

  @override
  PostsProvider getProviderOverride(
    covariant PostsProvider provider,
  ) {
    return call(
      provider.page,
      provider.perPage,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'postsProvider';
}

/// See also [posts].
class PostsProvider extends AutoDisposeFutureProvider<List<Post>> {
  /// See also [posts].
  PostsProvider(
    int page,
    int perPage,
  ) : this._internal(
          (ref) => posts(
            ref as PostsRef,
            page,
            perPage,
          ),
          from: postsProvider,
          name: r'postsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postsHash,
          dependencies: PostsFamily._dependencies,
          allTransitiveDependencies: PostsFamily._allTransitiveDependencies,
          page: page,
          perPage: perPage,
        );

  PostsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.perPage,
  }) : super.internal();

  final int page;
  final int perPage;

  @override
  Override overrideWith(
    FutureOr<List<Post>> Function(PostsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostsProvider._internal(
        (ref) => create(ref as PostsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        perPage: perPage,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Post>> createElement() {
    return _PostsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostsProvider &&
        other.page == page &&
        other.perPage == perPage;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, perPage.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostsRef on AutoDisposeFutureProviderRef<List<Post>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _PostsProviderElement extends AutoDisposeFutureProviderElement<List<Post>>
    with PostsRef {
  _PostsProviderElement(super.provider);

  @override
  int get page => (origin as PostsProvider).page;
  @override
  int get perPage => (origin as PostsProvider).perPage;
}

String _$postHash() => r'ade10d0b9de4d22f353afe422a2923b5224dfabf';

/// See also [post].
@ProviderFor(post)
const postProvider = PostFamily();

/// See also [post].
class PostFamily extends Family<AsyncValue<Post>> {
  /// See also [post].
  const PostFamily();

  /// See also [post].
  PostProvider call(
    String slug,
  ) {
    return PostProvider(
      slug,
    );
  }

  @override
  PostProvider getProviderOverride(
    covariant PostProvider provider,
  ) {
    return call(
      provider.slug,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'postProvider';
}

/// See also [post].
class PostProvider extends AutoDisposeFutureProvider<Post> {
  /// See also [post].
  PostProvider(
    String slug,
  ) : this._internal(
          (ref) => post(
            ref as PostRef,
            slug,
          ),
          from: postProvider,
          name: r'postProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$postHash,
          dependencies: PostFamily._dependencies,
          allTransitiveDependencies: PostFamily._allTransitiveDependencies,
          slug: slug,
        );

  PostProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.slug,
  }) : super.internal();

  final String slug;

  @override
  Override overrideWith(
    FutureOr<Post> Function(PostRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostProvider._internal(
        (ref) => create(ref as PostRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        slug: slug,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Post> createElement() {
    return _PostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostProvider && other.slug == slug;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, slug.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostRef on AutoDisposeFutureProviderRef<Post> {
  /// The parameter `slug` of this provider.
  String get slug;
}

class _PostProviderElement extends AutoDisposeFutureProviderElement<Post>
    with PostRef {
  _PostProviderElement(super.provider);

  @override
  String get slug => (origin as PostProvider).slug;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
