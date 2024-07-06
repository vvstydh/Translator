import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_task_2/mech.dart';

// ignore: must_be_immutable
class Translate extends StatelessWidget {
  String trtext = '';
  String from = '';
  String to = '';

  Translate({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) => Text(
      Mech().translatedtext,
      maxLines: 2,
      style: const TextStyle(color: Colors.white, fontSize: 20),
    )); 
  }

  Future<void> getTranslate(String t) async {
    if (Mech().fromlang == 'русский') {
      from = 'ru';
      to = 'en';
    } else if (Mech().fromlang == 'английский') {
      from = 'en';
      to = 'ru';
    }

    final res = await Dio().get(
        'https://api.mymemory.translated.net/get?q=${Uri.encodeComponent(t)}&langpair=$from|$to');
    debugPrint(res.data.toString());

    trtext = res.data['responseData']['translatedText'];
    Mech().translatedtext = trtext;
    debugPrint(trtext);
  }
}
