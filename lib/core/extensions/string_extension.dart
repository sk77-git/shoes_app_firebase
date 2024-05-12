extension StringExtensions on String? {
  bool isNullOrEmpty() {
    return this?.isEmpty ?? true;
  }
}
