// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mech.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Mech on MechWork, Store {
  late final _$textAtom = Atom(name: 'MechWork.text', context: context);

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  late final _$istextAtom = Atom(name: 'MechWork.istext', context: context);

  @override
  bool get istext {
    _$istextAtom.reportRead();
    return super.istext;
  }

  @override
  set istext(bool value) {
    _$istextAtom.reportWrite(value, super.istext, () {
      super.istext = value;
    });
  }

  late final _$contmarginAtom =
      Atom(name: 'MechWork.contmargin', context: context);

  @override
  double get contmargin {
    _$contmarginAtom.reportRead();
    return super.contmargin;
  }

  @override
  set contmargin(double value) {
    _$contmarginAtom.reportWrite(value, super.contmargin, () {
      super.contmargin = value;
    });
  }

  late final _$fromlangAtom = Atom(name: 'MechWork.fromlang', context: context);

  @override
  String get fromlang {
    _$fromlangAtom.reportRead();
    return super.fromlang;
  }

  @override
  set fromlang(String value) {
    _$fromlangAtom.reportWrite(value, super.fromlang, () {
      super.fromlang = value;
    });
  }

  late final _$tolangAtom = Atom(name: 'MechWork.tolang', context: context);

  @override
  String get tolang {
    _$tolangAtom.reportRead();
    return super.tolang;
  }

  @override
  set tolang(String value) {
    _$tolangAtom.reportWrite(value, super.tolang, () {
      super.tolang = value;
    });
  }

  late final _$idAtom = Atom(name: 'MechWork.id', context: context);

  @override
  int get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$MechWorkActionController =
      ActionController(name: 'MechWork', context: context);

  @override
  void move(dynamic texting) {
    final _$actionInfo =
        _$MechWorkActionController.startAction(name: 'MechWork.move');
    try {
      return super.move(texting);
    } finally {
      _$MechWorkActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changelanguage() {
    final _$actionInfo =
        _$MechWorkActionController.startAction(name: 'MechWork.changelanguage');
    try {
      return super.changelanguage();
    } finally {
      _$MechWorkActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addtohistory() {
    final _$actionInfo =
        _$MechWorkActionController.startAction(name: 'MechWork.addtohistory');
    try {
      return super.addtohistory();
    } finally {
      _$MechWorkActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removefromhistory(int index) {
    final _$actionInfo = _$MechWorkActionController.startAction(
        name: 'MechWork.removefromhistory');
    try {
      return super.removefromhistory(index);
    } finally {
      _$MechWorkActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
text: ${text},
istext: ${istext},
contmargin: ${contmargin},
fromlang: ${fromlang},
tolang: ${tolang},
id: ${id}
    ''';
  }
}
