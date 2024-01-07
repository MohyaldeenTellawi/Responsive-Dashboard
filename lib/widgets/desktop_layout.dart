import 'package:flutter/material.dart';
import 'package:responsive_dashboeard/widgets/all_expenses.dart';
import 'package:responsive_dashboeard/widgets/custom_drawer.dart';
import 'package:responsive_dashboeard/widgets/income_chart.dart';
import 'package:responsive_dashboeard/widgets/my_card.dart';
import 'package:responsive_dashboeard/widgets/quick_invoice.dart';

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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  AllExpenses(),
                  SizedBox(height: 20),
                  QuickInvoice(),
                ],
              ),
            )),
        SizedBox(width: 24),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                MyCardBody(),
                SizedBox(height: 24),
                IncomeChart()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
