enum Direction {
  asc(value: 'asc'),
  desc(value: 'desc'),
  ;

  const Direction({required this.value});

  final String value;
}
