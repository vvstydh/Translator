import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_task_2/mech.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  final Mech mech = Mech();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0x0d0d0d),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 25, 25, 25),
          title: Center(
            child: Text(
              'Invisibles Studio.',
              style: TextStyle(color: Color.fromARGB(255, 131, 131, 131)),
            ),
          )),
      body: Observer(
          builder: (_) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      AnimatedContainer(
                        margin: EdgeInsets.only(top: mech.contmargin),
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        height: 249,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 46, 68, 211),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(30)),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${mech.tolang}',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 131, 131, 131),
                                    fontSize: 15),
                              ),
                              Text(
                                '${mech.text}',
                                maxLines: 3,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ]),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        height: 250,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${mech.fromlang}',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 131, 131, 131),
                                    fontSize: 15),
                              ),
                              TextField(
                                onChanged: (text) {
                                  setState(() {
                                    mech.text = text;
                                    mech.move(text);
                                  });
                                },
                                minLines: 1,
                                maxLines: 3,
                                decoration: InputDecoration(
                                  hintText: 'Введите текст для перевода',
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 131, 131, 131),
                                      fontSize: 20),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 53, 79, 248)),
                                  ),
                                ),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ]),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 25, 25, 25),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(30)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(30, 30, 30, 10),
                      child: Text(
                        'История переводов',
                        style: TextStyle(
                            color: Color.fromARGB(255, 131, 131, 131),
                            fontSize: 25),
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
                  )),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    height: 100,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 25, 25, 25),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '${mech.fromlang}',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 131, 131, 131),
                                      fontSize: 15),
                                ),
                                Text(
                                  '${mech.tolang}',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 131, 131, 131),
                                      fontSize: 15),
                                ),
                              ]),
                        ),
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Color.fromARGB(255, 53, 79, 248),
                          child: IconButton(
                              onPressed: () {
                                mech.changelanguage();
                              },
                              icon: Icon(
                                Icons.autorenew,
                                color: Colors.white,
                                size: 35,
                              )),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color(0x0d0d0d),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30)),
                        border: Border(
                            top: BorderSide(
                              color: Color.fromARGB(255, 25, 25, 25),
                              width: 3,
                            ),
                            left: BorderSide(
                              color: Color.fromARGB(255, 25, 25, 25),
                              width: 3,
                            ),
                            right: BorderSide(
                              color: Color.fromARGB(255, 25, 25, 25),
                              width: 3,
                            ))),
                  ),
                ],
              )),
    ));
  }
}
