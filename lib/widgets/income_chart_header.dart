import 'package:flutter/material.dart';

import '../core/utils/styles.dart';

class IncomChartHeader extends StatelessWidget {
  const IncomChartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Income', style: Styles.styleSemiBold20),
        const Expanded(child: SizedBox()),
        Container(
          padding: const EdgeInsetsDirectional.all(12),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
                  borderRadius: BorderRadius.circular(12)),
              color: Colors.white),
          child: Row(
            children: [
              const Text('Monthly', style: Styles.styleMeduim16),
              const SizedBox(width: 18),
              Transform.rotate(
                  angle: -1.57079633,
                  child: const Icon(Icons.arrow_back_ios_new_outlined,
                      color: Color(0xfff1f1f1)))
            ],
          ),
        ),
      ],
    );
  }
}
