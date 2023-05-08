import 'package:flutter/material.dart';
import 'package:reedeem_page/widgets/coupn_grid.dart';
import '../widgets/horizontal_chips.dart';

// ignore: must_be_immutable
class ReedemCoins extends StatefulWidget {
  ReedemCoins({super.key});
  bool value = false;

  final List<String> chipData = [
    'Fashion',
    'Others',
    'Food',
    'Shopping',
    'Fashion',
    'Others',
    'Food',
    'Shopping',
    'Chips 9',
    'Chips 10'
  ];

  final vouchers = [
    ['Flat ₹250 Off On Myntra', 450, 'assets/images/myntra.jpg'],
    [
      'Buy 500g almonds and get 500g walnuts FREE',
      30,
      'assets/images/almond.jpg'
    ],
    ['Flat ₹200 Off On Noise', 450, 'assets/images/tv.jpg'],
    [
      'Amazon Fires TV Stick 3rd Gen at ₹2799 worth ₹4999',
      450,
      'assets/images/myntra.jpg'
    ],
    ['Flat ₹250 Off On Myntra', 450, 'assets/images/myntra.jpg'],
    [
      'Buy 500g almonds and get 500g walnuts FREE',
      30,
      'assets/images/myntra.jpg'
    ],
    ['Flat ₹200 Off On Noise', 450, 'assets/images/almond.jpg'],
    [
      'Amazon Fires TV Stick 3rd Gen at ₹2799 worth ₹4999',
      450,
      'assets/images/tv.jpg'
    ],
  ];

  @override
  State<ReedemCoins> createState() => _ReedemCoinsState();
}

class _ReedemCoinsState extends State<ReedemCoins> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        HorizontalChips(
          values: widget.chipData,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Colors.white,
                  ),
                  child: Checkbox(
                    value: widget.value,
                    onChanged: (value) {
                      setState(() {
                        widget.value = value!;
                      });
                    },
                  ),
                ),
                const Text(
                  'Price below 100 coins',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Text(
                  'Sort By',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.sort,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10.0, bottom: 10, top: 20),
          child: Text(
            'Reedem Vouchers',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: CoupnsGrid(
            datas: widget.vouchers,
          ),
        ),
      ],
    );
  }
}
