import 'package:flutter/material.dart';

class History {
  Widget historycont(var text, var fromlang, var tolang) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
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
                style: TextStyle(color: Color.fromARGB(255, 131, 131, 131), fontSize: 17),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.close, color: Color.fromARGB(255, 131, 131, 131),))
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7),
            height: 0.3,
            color: Color.fromARGB(255, 131, 131, 131),
          ),
          Text(
            '$text',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            '$text',
            style: TextStyle(color: Color.fromARGB(255, 131, 131, 131), fontSize: 17),
          )
        ],
      ),
    );
  }
}
