import 'package:flutter/material.dart';
import 'package:reedeem_page/pages/reedem_coins.dart';

class ReedemPage extends StatefulWidget {
  const ReedemPage({super.key});

  @override
  State<ReedemPage> createState() => _ReedemPageState();
}

class _ReedemPageState extends State<ReedemPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.info_outline_rounded,
                        color: Colors.white,
                      ))
                ],
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffae7fe8), Color(0xff6653d0)],
                          stops: [0, 1],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                ),
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(170),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/dollar.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '100',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Coin Balance',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Use Gaana coins to reedemem exciting vouchers',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TabBar(
                          indicatorColor: Colors.white,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          tabs: [
                            Tab(
                              text: "Earn Coins",
                            ),
                            Tab(
                              text: "Reedem Coins",
                            ),
                          ],
                        ),
                      ],
                    ))),
            body: Container(
              decoration: const BoxDecoration(
                  gradient: RadialGradient(
                focalRadius: 2,
                radius: 0.5,
                colors: [Color(0xfcea296a), Color(0xff001f30)],
                stops: [0, 2],
                center: Alignment.bottomLeft,
              )),
              child: TabBarView(children: [
                ReedemCoins(),
                ReedemCoins(),
              ]),
            ),
          )),
    );
  }
}


