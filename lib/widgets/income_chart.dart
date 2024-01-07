import 'package:flutter/material.dart';
import 'package:responsive_dashboeard/widgets/custom_background_container.dart';

import 'income_chart_header_body.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        IncomChartHeader(),
        SizedBox(height: 16),
        IncomeChartBody(),
      ],
    ));
  }
}
