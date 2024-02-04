import 'package:quick_internet_client/model/shared_preference_key.dart';
import 'package:quick_internet_client/model/shared_preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'direction.g.dart';

enum Direction {
  asc(value: 'asc'),
  desc(value: 'desc'),
  ;

  const Direction({required this.value});

  final String value;
}

@riverpod
class PostsFilterDirectionNotifier extends _$PostsFilterDirectionNotifier {
  String get _key => SharedPreferenceKey.postsFilterDirection.value;

  @override
  Direction build() {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);
    final direction = sharedPreferences.getString(_key);

    return Direction.values.firstWhere(
      (element) => element.name.toLowerCase() == direction?.toLowerCase(),
      orElse: () => Direction.desc,
    );
  }

  Future<void> update(Direction direction) async {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    await sharedPreferences.setString(_key, direction.value);

    state = direction;
  }
}
