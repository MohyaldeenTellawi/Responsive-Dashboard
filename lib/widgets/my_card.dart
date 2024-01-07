import 'package:flutter/material.dart';
import 'package:responsive_dashboeard/core/utils/styles.dart';
import 'package:responsive_dashboeard/widgets/custom_background_container.dart';

import 'custom_mycard.dart';
import 'transaction_history_list_view.dart';

class MyCardBody extends StatelessWidget {
  const MyCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          SizedBox(height: 20),
          CustomMycard(),
          Divider(height: 40, color: Color(0xFFF1F1F1)),
          TransactionHistory(),
        ],
      ),
    );
  }
}

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Transaction History', style: Styles.styleSemiBold20),
            Text('See all')
          ],
        ),
        SizedBox(height: 20),
        Text('13 April 2022', style: Styles.styleMeduim16),
        SizedBox(height: 16),
        TransactionHistoryListView()
      ],
    );
  }
}
