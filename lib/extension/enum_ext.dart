extension EnumByNameIgnoreCase<T extends Enum> on Iterable<T> {
  T byNameIgnoreCase(String name) {
    for (final value in this) {
      if (value.name.toLowerCase() == name.toLowerCase()) {
        return value;
      }
    }
    throw ArgumentError.value(name, 'name', 'No enum value with that name');
  }
}
