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

  static String removeAlphabet(String text) {
    var temp = text.replaceAll(RegExp('[^0-9.]'), '');
    return temp;
  }

  static bool isAlphabetDigitString(String text) {
    assert(text != null);
    return text?.contains(RegExp(r'[^A-Za-z0-9]'));
  }

  static String trimString(String text) {
    if (text == null) {
      return text;
    }

    String toReturn = text.trim();
    toReturn = toReturn.replaceAll(RegExp('  +'), ' ');
    toReturn = toReturn.replaceAll(RegExp('\t\t+'), '\t');
    toReturn = toReturn.replaceAll(RegExp('\n\n\n+'), '\n\n');
    return toReturn;
  }

  static List<String> indexable(String text) {
    if (text == null) {
      return [];
    }
    return Set.of(text
        .split(RegExp(r'[^A-Za-z0-9]'))
        .map((element) => element.toLowerCase())
        .where((element) => element != '')).toList();
  }

  static String ellipsis(String toBeShorted, int endIndex) {
    if (toBeShorted == null) {
      return '';
    }

    String temp = toBeShorted;
    if (temp.length >= endIndex) {
      temp = temp.substring(0, endIndex - 3) + '...';
    }
    return temp;
  }
}
