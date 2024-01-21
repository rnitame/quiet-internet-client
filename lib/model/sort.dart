import 'package:quick_internet_client/model/shared_preference_key.dart';
import 'package:quick_internet_client/model/shared_preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sort.g.dart';

enum Sort {
  created(value: 'created'),
  updated(value: 'updated'),
  ;

  const Sort({required this.value});

  final String value;
}

@riverpod
class PostsFilterSortNotifier extends _$PostsFilterSortNotifier {
  String get _key => SharedPreferenceKey.postsFilterSort.value;

  @override
  Sort build() {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);
    final sort = sharedPreferences.getString(_key);

    return Sort.values.firstWhere(
      (element) => element.name == sort,
      orElse: () => Sort.created,
    );
  }

  Future<void> update(Sort sort) async {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    await sharedPreferences.setString(_key, sort.value);

    state = sort;
  }
}
