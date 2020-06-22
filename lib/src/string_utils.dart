class Strings {
  static bool isNotBlank(String text) {
    return (text?.trim()?.length ?? 0) > 0;
  }

  static bool isBlank(String text) {
    return !isNotBlank(text);
  }

  static bool isEmpty(String text) {
    return text == null || text.isEmpty;
  }

  static List<String> split(String text, Pattern pattern,
      {List<String> defaultValue = const []}) {
    List<String> list = text?.split(pattern);
    return list ?? defaultValue;
  }

  static String reverse(String text) {
    if (isEmpty(text)) return '';
    StringBuffer buffer = StringBuffer();

    for (int index = text.length - 1; index >= 0; index--) {
      buffer.writeCharCode(text.codeUnitAt(index));
    }
    return buffer.toString();
  }
}
