import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:list/Controller/controller.dart';

class CardWidget extends StatefulWidget {
  final String textbir;
  final String textiki;
  final String textuc;
  final String textdort;
  final String textbes;
  final String textalti;
  final String textyedi;
  final Function() onTap;

  final int index;
  final RxInt indexItem;
  const CardWidget({
    Key? key,
    required this.index,
    required this.textbir,
    required this.textiki,
    required this.textuc,
    required this.textdort,
    required this.textbes,
    required this.textalti,
    required this.textyedi,
    required this.onTap,
    required this.indexItem,
  }) : super(key: key);

  @override
  State<CardWidget> createState() => _CardwidgetState();
}

class _CardwidgetState extends State<CardWidget> {
  IndexController? indexController;
  @override
  void initState() {
    indexController = Get.find(tag: "index");
    super.initState();
  }

  bool isHover = false;
  // int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.fromLTRB(167, 0, 167, 0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          child: Material(
            elevation: 5,
            shadowColor: isHover
                ? const Color.fromARGB(255, 123, 122, 122)
                : Colors.white,
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                      width: 5,
                      color: widget.indexItem == indexController!.selectedindex
                          ? const Color.fromARGB(255, 33, 37, 243)
                          : Colors.white),
                ),
              ),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    isHover = value;
                  });
                },
                hoverColor: Colors.white,
                onTap: widget.onTap,
                splashColor: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 440,
                        child: Text(widget.textbir),
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(widget.textiki),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(widget.textuc),
                      ),
                      SizedBox(
                        width: 250,
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.blue.withOpacity(0.5)),
                              child: Center(
                                child: Text(widget.textdort),
                              ),
                            ),
                            Text(widget.textbes),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "data:image/png;base64,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"),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.textalti),
                                Text(widget.textyedi),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(60)),
                              child: const Icon(
                                Icons.notification_add,
                                color: Colors.white,
                                size: 20,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
