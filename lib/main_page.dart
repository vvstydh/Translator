import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x0d0d0d),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 25, 25, 25),
          title: Center(
            child: Text(
              'Invisibles Studio.',
              style: TextStyle(color: Color.fromARGB(255, 131, 131, 131)),
            ),
          )),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: 250,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'русский',
                      style: TextStyle(
                          color: Color.fromARGB(255, 131, 131, 131),
                          fontSize: 15),
                    ),
                    TextField(
                      onChanged: (text) {},
                      minLines: 1,
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'Введите текст для перевода',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 131, 131, 131),
                            fontSize: 20),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 53, 79, 248)),
                        ),
                      ),
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ]),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 25, 25, 25),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(30, 30, 30, 10),
                child: Text(
                  'История переводов',
                  style: TextStyle(
                      color: Color.fromARGB(255, 131, 131, 131), fontSize: 20),
                )),
            Expanded(
                child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 30),
              children: [
                for (int i = 0; i < 10; i++)
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: Color.fromARGB(255, 25, 25, 25),
                    ),
                  )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
