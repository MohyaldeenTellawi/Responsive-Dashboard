import 'package:flutter/material.dart';
import 'package:responsive_dashboeard/widgets/all_expenses.dart';
import 'package:responsive_dashboeard/widgets/custom_drawer.dart';

class DsektopLayout extends StatelessWidget {
  const DsektopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: Column(
              children: [Expanded(child: AllExpenses())],
            ))
      ],
    );
  }
}
