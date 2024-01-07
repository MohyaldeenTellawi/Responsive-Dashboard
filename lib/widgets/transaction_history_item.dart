import 'package:flutter/material.dart';

import '../core/utils/styles.dart';
import '../modules/transaction_history_module.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem(
      {super.key, required this.transactionHistoryModule, this.priceColor});

  final TransactionHistoryModule transactionHistoryModule;
  final Color? priceColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 12),
      decoration: ShapeDecoration(
        color: const Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: ListTile(
        title:
            Text(transactionHistoryModule.title, style: Styles.styleMeduim16),
        subtitle: Text(transactionHistoryModule.subTitle,
            style:
                Styles.styleRegular16.copyWith(color: const Color(0xFFAAAAAA))),
        trailing: Text(
          transactionHistoryModule.price,
          style: Styles.styleSemiBold20
              .copyWith(color: priceColor ?? const Color(0xFFF3735E)),
        ),
      ),
    );
  }
}
