import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:my_task_2/history.dart';
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
    id++;
    transationhistory.add(HistoryData(
        id: id,
        widget: HistoryWidget(
            fromLang: fromlang,
            onClick: () => removefromhistory(id),
            text: text,
            toLang: tolang,
            id: id,)));
  }

  @action
  void removefromhistory(int id) {
    
  }
}
