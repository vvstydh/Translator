import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_task_2/mech.dart';

// ignore: must_be_immutable
class Translate extends StatelessWidget {
  final Mech mechi;
  String trtext = '';

  Translate({super.key, required this.mechi});

  @override
  Widget build(BuildContext context) {
    return  Text(
              mechi.translatedtext,
              maxLines: 2,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            );
  }

  Future<void> getTranslate(String t) async {
    String from = '';
    String to = '';
    if (mechi.fromlang == 'русский') {
      from = 'ru';
      to = 'en';
    } else if (mechi.fromlang == 'английский') {
      from = 'en';
      to = 'ru';
    }

    final res = await Dio().get(
        'https://api.mymemory.translated.net/get?q=${Uri.encodeComponent(t)}&langpair=$from|$to');
    debugPrint(res.data.toString());

    final trtext = res.data['responseData']['translatedText'];
    mechi.translatedtext = trtext;
    debugPrint(mechi.translatedtext);
  }
}
