import 'package:flutter/material.dart';

import 'all_expenses_body.dart';
import 'all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(20),
      decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: Colors.white),
      child: const Column(
        children: [
          AllExpensesHeader(),
          AllExpensesBody(),
        ],
      ),
    );
  }
}
