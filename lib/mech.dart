import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:my_task_2/historydata.dart';
import 'package:logger/logger.dart';

part 'mech.g.dart';

class Mech = MechWork with _$Mech;

abstract class MechWork with Store {
  @observable
  var text = '';

  @observable
  String translatedText = '';

  @observable
  bool istext = false;

  @observable
  double contmargin = 0;

  @observable
  var fromlang = 'русский';

  @observable
  var tolang = 'английский';

  ObservableList<HistoryData> transationhistory = ObservableList<HistoryData>();

  @action
  void move(var texting) {
    if (texting != '') {
      istext = true;
      contmargin = 180;
    } else if (texting == '') {
      istext = false;
      contmargin = 0;
    }
  }

  @action
  void changelanguage() {
    var change = fromlang;
    fromlang = tolang;
    tolang = change;
  }

  @action
  void addtohistory() {
    transationhistory.add(HistoryData(
        fromLang: fromlang,
        text: text,
        translatedText: translatedText,
        toLang: tolang));
  }

  @action
  void removefromhistory(int index) {
    transationhistory.removeAt(index);
  }

  @action
  void translated(String txt) {
    translatedText = txt;
    Logger().i(translatedText);
  }

  Future<void> getTranslate(String translatingtext) async {
    String from = '';
    String to = '';
    if (fromlang == 'русский') {
      from = 'ru';
      to = 'en';
    } else if (fromlang == 'английский') {
      from = 'en';
      to = 'ru';
    }
    final res = await Dio().get(
        'https://api.mymemory.translated.net/get?q=${Uri.encodeComponent(translatingtext)}&langpair=$from|$to');

    translated(res.data['responseData']['translatedText']);
  }
}
