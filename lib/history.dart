import 'package:flutter/material.dart';
import 'package:my_task_2/mech.dart';

class History {
  final Mech mech = Mech();

  Widget historycont(var text, var fromlang, var tolang) {
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
                '$fromlang → $tolang',
                style: const TextStyle(
                    color: Color.fromARGB(255, 131, 131, 131), fontSize: 17),
              ),
              IconButton(
                  onPressed: () {},
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
            '$text',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            '$text',
            style: const TextStyle(
                color: Color.fromARGB(255, 131, 131, 131), fontSize: 17),
          )
        ],
      ),
    );
  }
}
