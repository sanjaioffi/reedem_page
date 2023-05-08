import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class CoupnsGrid extends StatelessWidget {
  const CoupnsGrid({
    super.key,
    required this.datas,
  });

  final List datas;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        childAspectRatio: (1 / 1.4),
        crossAxisCount: 2, // Number of columns
        children: List.generate(datas.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CouponCard(
                height: 1000,
                curvePosition: 160,
                curveRadius: 30,
                borderRadius: 10,
                backgroundColor: const Color.fromARGB(255, 51, 51, 51),
                firstChild: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Colors.white,
                      width: 100,
                      height: 50,
                      child: Image.asset(
                        datas[index][2],
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 150,
                      child: Text(
                        datas[index][0],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                secondChild: Container(
                    width: double.maxFinite,
                    decoration: DottedDecoration(
                        color: Colors.white,
                        shape: Shape.line,
                        linePosition: LinePosition.top),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/dollar.png',
                              width: 15,
                              height: 15,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '${datas[index][1]} Coins',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))),
          );
        }));
  }
}
