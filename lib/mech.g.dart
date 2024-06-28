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

  late final _$MechWorkActionController =
      ActionController(name: 'MechWork', context: context);

  @override
  void move() {
    final _$actionInfo =
        _$MechWorkActionController.startAction(name: 'MechWork.move');
    try {
      return super.move();
    } finally {
      _$MechWorkActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
text: ${text},
istext: ${istext}
    ''';
  }
}
