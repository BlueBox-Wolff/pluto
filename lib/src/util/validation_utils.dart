import '../../pluto.dart';

class Validations {
  static bool isNull(dynamic object) => object == null;

  static bool isNullOrBlank(dynamic object) {
    if (isNull(object)) return true;

    switch (object.runtimeType) {
      case String:
        return Strings.isEmpty(object) || Strings.isBlank(object);
        break;
      case List:
      case Map:
      case Set:
      case Iterable:
        return object.isEmpty;
        break;
      default:
        return object.toString() == 'null' || object.toString().trim().isEmpty;
    }
  }

  static bool isNumber(String string) {
    if (isNull(string)) return false;
    return num.parse(string) is num ?? false;
  }
}
