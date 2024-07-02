import 'package:mobx/mobx.dart';
import 'package:my_task_2/historydata.dart';

part 'mech.g.dart';

class Mech = MechWork with _$Mech;

abstract class MechWork with Store {
  @observable
  var text = '';

  @observable
  bool istext = false;

  @observable
  double contmargin = 0;

  @observable
  var fromlang = 'русский';

  @observable
  var tolang = 'английский';

  @observable
  int id = 0;

  ObservableList<HistoryData> transationhistory = ObservableList<HistoryData>();

  @action
  void move(var texting) {
    if (texting != '') {
      istext = true;
      contmargin = 200;
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
    transationhistory.add(HistoryData(id: id, fromLang: fromlang, text: text, toLang: tolang));
  }

  @action
  void removefromhistory(int index) {
    transationhistory.removeAt(index);
  }
}
