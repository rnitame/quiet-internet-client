enum PostVisibility {
  myself(value: 'MYSELF'),
  anyone(value: 'ANYONE'),
  ;

  const PostVisibility({required this.value});

  final String value;
}
