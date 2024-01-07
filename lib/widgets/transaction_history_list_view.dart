import 'package:flutter/material.dart';

import '../modules/transaction_history_module.dart';
import 'transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionHistoryModule(
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022',
      price: r'$20,129',
    ),
    TransactionHistoryModule(
        title: 'Landing Page project',
        subTitle: '13 Apr, 2022 at 3:30 PM',
        price: r'$2,000'),
    TransactionHistoryModule(
        title: 'Cash Withdrawal', subTitle: '13 Apr, 2022 ', price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => TransactionHistoryItem(
              transactionHistoryModule: e, priceColor: const Color(0xFF7CD87A)))
          .toList(),
    );
  }
}
