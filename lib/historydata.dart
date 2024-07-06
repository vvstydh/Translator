class HistoryData {
  final String text;
  final String translatedText;
  final String fromLang;
  final String toLang;
  const HistoryData({
    required this.fromLang,
    required this.text,
    required this.translatedText,
    required this.toLang,
  });
}
