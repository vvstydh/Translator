import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_task_2/mech.dart';

class MainPage extends StatelessWidget {
  double move = 10;
  final Mech mech = Mech();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x0d0d0d),
      body: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
                onPressed: () {
                  mech.move();
                },
                child: Text('csdcs')),
            Expanded(
                child: Observer(
                    builder: (_) => Center(
                            child: AnimatedContainer(
                          color: Colors.black,
                          duration: const Duration(seconds: 2),
                          margin: EdgeInsets.only(top: mech.contmargin),
                          height: 100,
                          width: move,
                        ))))
          ],
        ),
      ),
    );
  }
}
