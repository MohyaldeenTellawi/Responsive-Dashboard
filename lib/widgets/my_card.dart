import 'package:flutter/material.dart';
import 'package:responsive_dashboeard/widgets/custom_background_container.dart';
import 'package:responsive_dashboeard/widgets/income_chart.dart';

import 'custom_mycard.dart';
import 'transaction_history.dart';

class MyCardBody extends StatelessWidget {
  const MyCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          CustomMycard(),
          Divider(height: 40, color: Color(0xFFF1F1F1)),
          TransactionHistory(),
          IncomeChart()
        ],
      ),
    );
  }
}




// SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(height: 20),
//                 MyCardBody(),
//                 SizedBox(height: 24),
//                 IncomeChart()
//               ],
//             ),
//           ),