import 'package:flutter/material.dart';

import '../core/utils/styles.dart';
import 'transaction_history_list_view.dart';

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
