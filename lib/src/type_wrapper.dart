abstract class TypeWrapper {
  int asInt();

  double asDouble();

  String asString();

  bool asBool();

  Map<K, V> asMap<K, V>();

  List<T> asList<T>();
}
