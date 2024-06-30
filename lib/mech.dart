import 'package:mobx/mobx.dart';
import 'package:my_task_2/history.dart';

part 'mech.g.dart';

class Mech = MechWork with _$Mech;

abstract class MechWork with Store {
  final History his = History();

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
  void addtohistory(){
    
  }

  @action
  void removefromhistory(){
    
  } 
}
