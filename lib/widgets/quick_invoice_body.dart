import 'package:flutter/material.dart';
import 'package:responsive_dashboeard/widgets/title_text_feild.dart';

import 'quick_invoice_latest_transaction.dart';

class QuickInvoiceBody extends StatelessWidget {
  const QuickInvoiceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        QuickInvoiceLatestTransaction(),
        Divider(
          height: 48,
          color: Color(0xFFF1F1F1),
        ),
        QuickInvoiceForm()
      ],
    );
  }
}
