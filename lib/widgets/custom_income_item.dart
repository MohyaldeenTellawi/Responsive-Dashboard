import 'package:flutter/material.dart';

import '../core/utils/styles.dart';

class CustomIncomeItem extends StatelessWidget {
  const CustomIncomeItem(
      {super.key,
      required this.text,
      required this.number,
      required this.pointColor});

  final String text, number;
  final Color pointColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
            color: pointColor,
            shape: const OvalBorder(),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: Styles.styleRegular16,
        ),
        const SizedBox(width: 50),
        Text(number, style: Styles.styleMeduim16)
      ],
    );
  }
}
