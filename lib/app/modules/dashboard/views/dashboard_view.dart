import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(120.0),
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    "Hallo",
                    textAlign: TextAlign.end,
                  ),
                  subtitle: const Text(
                    "Virgi Septian",
                    textAlign: TextAlign.end,
                  ),
                  trailing: Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 50.0,
                    height: 50.0,
                    child: Lottie.network(
                        'https://gist.githubusercontent.com/olipiskandar/2095343e6b34255dcfb042166c4a3283/raw/d76e1121a2124640481edcf6e7712130304d6236/praujikom_kucing.json',
                        fit: BoxFit.cover),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: TabBar(
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        text: "Headline",
                      ),
                      Tab(
                        text: "Teknologi",
                      ),
                      Tab(
                        text: "Sains",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              headline(),
              teknologi(),
              sains(),
            ],
          ),
        ),
      ),
    );
  }

  ListView sains() {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 5),
          height: 110,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://picsum.photos/100',
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          '3 jam yang lalu',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                        'Sri Mulyani Kecam Hidup Mewah Pejabat Pajak Buntut Kasus Rubicon - CNN Indonesia'),
                    const SizedBox(
                      height: 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Author : ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Muhammad Azwar',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'sumber : ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'cnn.com',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  ListView teknologi() {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 5),
          height: 110,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://picsum.photos/100',
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          '3 jam yang lalu',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                        'Sri Mulyani Kecam Hidup Mewah Pejabat Pajak Buntut Kasus Rubicon - CNN Indonesia'),
                    const SizedBox(
                      height: 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Author : ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Muhammad Azwar',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'sumber : ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'cnn.com',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  ListView headline() {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 5),
          height: 110,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://picsum.photos/100',
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          '3 jam yang lalu',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                        'Sri Mulyani Kecam Hidup Mewah Pejabat Pajak Buntut Kasus Rubicon - CNN Indonesia'),
                    const SizedBox(
                      height: 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Author : ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Muhammad Azwar',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'sumber : ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'cnn.com',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
