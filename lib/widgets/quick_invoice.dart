import 'package:flutter/material.dart';
import 'package:responsive_dashboeard/widgets/custom_background_container.dart';
import 'package:responsive_dashboeard/widgets/quick_invoice_body.dart';

import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        QuickInvoiceHeader(),
        SizedBox(height: 24),
        QuickInvoiceBody(),
      ],
    ));
  }
}
