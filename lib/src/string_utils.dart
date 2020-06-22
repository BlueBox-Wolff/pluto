class Strings {
  static bool isNotBlank(String text) {
    return (text?.trim()?.length ?? 0) > 0;
  }

  static bool isBlank(String text) {
    return !isNotBlank(text);
  }
}
