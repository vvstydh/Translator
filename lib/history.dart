import 'package:flutter/material.dart';
import 'package:my_task_2/mech.dart';

class HistoryWidget extends StatelessWidget {
  final int id;
  final String text;
  final String fromLang;
  final String toLang;
  const HistoryWidget(
      {super.key,
      required this.fromLang,
      required this.text,
      required this.toLang,
      required this.id,
      required this.mech});
  final Mech mech;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        color: Color.fromARGB(255, 25, 25, 25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$fromLang → $toLang',
                style: const TextStyle(
                    color: Color.fromARGB(255, 131, 131, 131), fontSize: 17),
              ),
              IconButton(
                  onPressed: () {
                    mech.removefromhistory(id, text, fromLang, toLang);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Color.fromARGB(255, 131, 131, 131),
                  ))
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 7),
            height: 0.3,
            color: const Color.fromARGB(255, 131, 131, 131),
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            text,
            style: const TextStyle(
                color: Color.fromARGB(255, 131, 131, 131), fontSize: 17),
          )
        ],
      ),
    );
  }
}
