import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_task_2/history.dart';
import 'package:flutter/services.dart';
import 'package:my_task_2/mech.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainPage extends HookWidget {
  final TextEditingController clear = TextEditingController();

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mech = useMemoized(() => Mech());

    return MaterialApp(
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: const Color.fromARGB(255, 13, 13, 13),
            appBar: AppBar(
                surfaceTintColor: const Color.fromARGB(255, 25, 25, 25),
                backgroundColor: const Color.fromARGB(255, 25, 25, 25),
                title: const Center(
                  child: Text(
                    'Invisibles Studio.',
                    style: TextStyle(color: Color.fromARGB(255, 131, 131, 131)),
                  ),
                )),
            body: Column(children: [
              Expanded(
                child: Stack(
                  children: [
                    Observer(
                        builder: (_) => AnimatedContainer(
                              margin: EdgeInsets.only(top: mech.contmargin),
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn,
                              alignment: Alignment.centerLeft,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              height: 190,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 46, 68, 211),
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(30)),
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Observer(
                                      builder: (_) => Text(
                                        mech.tolang,
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 131, 131, 131),
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 7),
                                      height: 0.3,
                                      color: const Color.fromARGB(
                                          255, 131, 131, 131),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 50,
                                          width: 300,
                                          child: SingleChildScrollView(
                                            child: Observer(
                                                builder: (_) => Text(
                                                      mech.perevod,
                                                      softWrap: true,
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),
                                                    )),
                                          ),
                                        ),
                                        AnimatedOpacity(
                                            opacity: mech.istext ? 1.0 : 0.0,
                                            duration:
                                                const Duration(seconds: 0),
                                            child: IconButton(
                                                onPressed: () {
                                                  mech.move(clear.text = '');
                                                  mech.addtohistory();
                                                },
                                                icon: const Icon(
                                                  Icons.close,
                                                  color: Color.fromARGB(
                                                      255, 131, 131, 131),
                                                )))
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        AnimatedOpacity(
                                            opacity: mech.istext ? 1.0 : 0.0,
                                            duration:
                                                const Duration(seconds: 0),
                                            child: IconButton(
                                                onPressed: () {
                                                  Clipboard.setData(
                                                      ClipboardData(
                                                          text: mech.perevod));
                                                },
                                                icon: const Icon(
                                                  Icons.copy,
                                                  color: Color.fromARGB(
                                                      255, 131, 131, 131),
                                                )))
                                      ],
                                    )
                                  ]),
                            )),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      height: 210,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 25, 25, 25),
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(30)),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Observer(
                                builder: (_) => Text(
                                      mech.fromlang,
                                      style: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 131, 131, 131),
                                          fontSize: 15),
                                    )),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 7),
                              height: 0.3,
                              color: const Color.fromARGB(255, 131, 131, 131),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: clear,
                                    onChanged: (textik) {
                                      mech.text = textik;
                                      mech.move(textik);
                                      mech.getTranslate(textik);
                                    },
                                    cursorColor:
                                        const Color.fromARGB(255, 46, 68, 211),
                                    minLines: 1,
                                    maxLines: 3,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: 'Введите текст для перевода',
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 131, 131, 131),
                                          fontSize: 20),
                                    ),
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                Observer(
                                    builder: (_) => AnimatedOpacity(
                                        opacity: mech.istext ? 1.0 : 0.0,
                                        duration: const Duration(seconds: 0),
                                        child: IconButton(
                                            onPressed: () {
                                              mech.move(clear.text = '');
                                              mech.addtohistory();
                                            },
                                            icon: const Icon(
                                              Icons.close,
                                              color: Color.fromARGB(
                                                  255, 131, 131, 131),
                                            ))))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Observer(
                                    builder: (_) => AnimatedOpacity(
                                        opacity: mech.istext ? 1.0 : 0.0,
                                        duration: const Duration(seconds: 0),
                                        child: IconButton(
                                            onPressed: () {
                                              Clipboard.setData(ClipboardData(
                                                  text: mech.text));
                                            },
                                            icon: const Icon(
                                              Icons.copy,
                                              color: Color.fromARGB(
                                                  255, 131, 131, 131),
                                            ))))
                              ],
                            )
                          ]),
                    ),
                    Observer(
                      builder: (_) => (mech.transationhistory.isEmpty)
                          ? const SizedBox()
                          : DraggableScrollableSheet(
                              initialChildSize: 0.45,
                              maxChildSize: 1,
                              minChildSize: 0.45,
                              builder: (context, scrollController) {
                                return Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 13, 13, 13),
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(30)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                30, 30, 30, 10),
                                            child: const Text(
                                              'История переводов',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 131, 131, 131),
                                                  fontSize: 25),
                                            )),
                                        Observer(
                                            builder: (_) => Expanded(
                                                  child: ListView.builder(
                                                      controller:
                                                          scrollController,
                                                      itemCount: mech
                                                          .transationhistory
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        final reversedIndex =
                                                            mech.transationhistory
                                                                    .length -
                                                                1 -
                                                                index;
                                                        final historyItem =
                                                            mech.transationhistory[
                                                                reversedIndex];
                                                        return Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        10),
                                                            child:
                                                                HistoryWidget(
                                                              fromLang:
                                                                  historyItem
                                                                      .fromLang,
                                                              onClick: () {
                                                                mech.removefromhistory(
                                                                    reversedIndex);
                                                              },
                                                              text: historyItem
                                                                  .text,
                                                              translatedText:
                                                                  historyItem
                                                                      .translatedText,
                                                              toLang:
                                                                  historyItem
                                                                      .toLang,
                                                            ));
                                                      }),
                                                ))
                                      ],
                                    ));
                              }),
                    )
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Color(0x000d0d0d),
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
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 25, 25, 25),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Observer(
                              builder: (_) => Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 35),
                                  child: Text(
                                    mech.fromlang,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            Observer(
                              builder: (_) => Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 35),
                                  child: Text(
                                    mech.tolang,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: const Color.fromARGB(255, 53, 79, 248),
                        child: IconButton(
                          onPressed: () {
                            mech.changelanguage();
                          },
                          icon: const Icon(
                            Icons.autorenew,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                    ],
                  ))
            ])));
  }
}
