import 'package:mobx/mobx.dart';
part 'mech.g.dart';

class Mech = MechWork with _$Mech;

abstract class MechWork with Store{
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
  void move(var texting){
    if (texting != ''){
      contmargin = 200;
          }
    else if(texting == ''){
      contmargin = 0;
    }
  }
  @action
  void changelanguage(){
    var change = fromlang;
    fromlang = tolang;
    tolang = change;
  }
}