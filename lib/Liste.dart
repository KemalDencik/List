import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:list/Controller/controller.dart';
import 'package:list/widget/CardWidget.dart';

class Liste extends StatefulWidget {
  const Liste({super.key});

  @override
  State<Liste> createState() => _ListeState();
}

class _ListeState extends State<Liste> {
  IndexController? indexController;
  Color splash = const Color(0xFF2D2655);
  @override
  void initState() {
    super.initState();
    indexController = Get.put(IndexController(), tag: "index");
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    List items = [
      CardWidget(
        indexItem: 0.obs,
        onTap: () {
          indexController!.selectedindex.value = 0;
        },
        index: 0,
        textbir: "The desing of Everyday Things",
        textiki: "Kemal DENCİK",
        textuc: "5,0",
        textdort: "D",
        textbes: "Desing & UX",
        textalti: "Taken 20 Days Ago",
        textyedi: "Kemal Dencik",
      ),
      const SizedBox(
        height: 8,
      ),
      CardWidget(
        indexItem: 1.obs,
        onTap: () {
          indexController!.selectedindex.value = 1;
        },
        textbir: "Scaling Lean: Mastering the key metrics for stratup growth",
        textiki: "Abdullah DENCİK",
        textuc: "4.5",
        textdort: "D",
        textbes: "Desing & UX",
        textalti: "Taken 20 Days Ago",
        textyedi: "Abdullah DENCİK",
        index: 1,
      ),
      const SizedBox(
        height: 8,
      ),
      CardWidget(
        indexItem: 2.obs,
        onTap: () {
          indexController!.selectedindex.value = 2;
        },
        textbir: "Scaling Lean: Mastering the key metrics for stratup growth",
        textiki: "Muhammet YILMAZ",
        textuc: "5,0",
        textdort: "M",
        textbes: "Desing & UX",
        textalti: "Taken 20 Days Ago",
        textyedi: "Muhammet YILMAZ",
        index: 2,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste"),
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(150, 20, 150, 0),
                  child: Center(
                    child: Container(
                      width: 1200,
                      height: 60,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 460,
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text(
                                    "Title",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 20, 0, 0),
                                  child: Column(
                                    children: const [
                                      Icon(
                                        Icons.expand_less,
                                        size: 10,
                                      ),
                                      Icon(
                                        Icons.expand_more,
                                        size: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: Row(
                              children: [
                                const Text(
                                  "Author",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 20, 0, 0),
                                  child: Column(
                                    children: const [
                                      Icon(
                                        Icons.expand_less,
                                        size: 10,
                                      ),
                                      Icon(
                                        Icons.expand_more,
                                        size: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 100,
                            child: Text(
                              "Rating",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "Category",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            child: Text(
                              "Status",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    ListView.builder(
                      itemBuilder: (context, index) => items[index],
                      itemCount: items.length,
                      shrinkWrap: true,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
