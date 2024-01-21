enum SharedPreferenceKey {
  postsFilterVisibility('posts_filter_visibility'),
  postsFilterDirection('posts_filter_direction'),
  postsFilterSort('posts_filter_sort'),
  ;

  const SharedPreferenceKey(this.value);

  final String value;
}
