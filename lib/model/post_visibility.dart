import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quick_internet_client/model/shared_preference_key.dart';
import 'package:quick_internet_client/model/shared_preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_visibility.g.dart';

@JsonEnum(valueField: 'value')
enum PostVisibility {
  myself(value: 'MYSELF'),
  anyone(value: 'ANYONE'),
  all(value: 'ALL'),
  ;

  const PostVisibility({required this.value});

  final String value;
}

@riverpod
class PostsFilterVisibilityNotifier extends _$PostsFilterVisibilityNotifier {
  String get _key => SharedPreferenceKey.postsFilterVisibility.value;

  @override
  PostVisibility build() {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);
    final visibility = sharedPreferences.getString(_key);

    return PostVisibility.values.firstWhere(
      (element) => element.name.toLowerCase() == visibility?.toLowerCase(),
      orElse: () => PostVisibility.all,
    );
  }

  Future<void> update(PostVisibility visibility) async {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    await sharedPreferences.setString(_key, visibility.value);

    state = visibility;
  }
}
