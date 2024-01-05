import 'package:flutter/material.dart';

class AllExpensesBodyItem extends StatelessWidget {
  const AllExpensesBodyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: const Column(
        children: [AllExpensesItemHeader()],
      ),
    );
  }
}

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const ShapeDecoration(
              color: Color(0xFFFAFAFA), shape: OvalBorder()),
        )
      ],
    );
  }
}
