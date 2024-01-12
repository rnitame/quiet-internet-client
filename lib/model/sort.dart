enum Sort {
  created(value: 'created'),
  updated(value: 'updated'),
  ;

  const Sort({required this.value});

  final String value;
}
