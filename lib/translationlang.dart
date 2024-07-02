import 'package:flutter/material.dart';

class Translationlang extends StatelessWidget{
  final String lang;
  const Translationlang({super.key, required this.lang});

  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 35), // Достаточный отступ для кнопки
                child: Text(
                  lang,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
            );
  }

}