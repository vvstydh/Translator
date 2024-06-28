import 'package:mobx/mobx.dart';
part 'mech.g.dart';

class Mech = MechWork with _$Mech;

abstract class MechWork with Store{
  @observable
  var text = '';

  @observable
  bool istext = false;

  @override
  double contmargin = 0;

  @action
  void move(){
    if (text != ''){
      istext = true;
      contmargin = 300;
          }
    else if(text == ''){
      istext = false;
      contmargin = 3000;
    }
  }
}