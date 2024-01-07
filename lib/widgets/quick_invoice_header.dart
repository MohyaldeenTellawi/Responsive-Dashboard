import 'package:flutter/material.dart';

import '../core/utils/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Quick Invoice', style: Styles.styleSemiBold16),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: const Icon(Icons.add, color: Color(0xFF4EB7F2)),
        ),
      ],
    );
  }
}
