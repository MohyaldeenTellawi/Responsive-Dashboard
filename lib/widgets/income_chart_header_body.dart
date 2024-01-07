import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboeard/core/utils/app_images.dart';
import 'package:responsive_dashboeard/widgets/custom_income_item.dart';

import '../core/utils/styles.dart';

class IncomChartHeader extends StatelessWidget {
  const IncomChartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Icome', style: Styles.styleSemiBold20),
        const Expanded(child: SizedBox()),
        Container(
          padding: const EdgeInsetsDirectional.all(12),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
                  borderRadius: BorderRadius.circular(12)),
              color: Colors.white),
          child: Row(
            children: [
              const Text('Monthly', style: Styles.styleMeduim16),
              const SizedBox(width: 18),
              Transform.rotate(
                  angle: -1.57079633,
                  child: const Icon(Icons.arrow_back_ios_new_outlined,
                      color: Color(0xfff1f1f1)))
            ],
          ),
        ),
      ],
    );
  }
}

class IncomeChartBody extends StatelessWidget {
  const IncomeChartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesChart),
        const SizedBox(width: 40),
        const IncomeItemListView()
      ],
    );
  }
}

class IncomeItemListView extends StatelessWidget {
  const IncomeItemListView({super.key});
  static const items = [
    CustomIncomeItem(
        text: 'Design service', number: '40%', pointColor: Color(0xFF208CC8)),
    CustomIncomeItem(
        text: 'Design product', number: '25%', pointColor: Color(0xFF208CC8)),
    CustomIncomeItem(
        text: 'Product royalti', number: '20%', pointColor: Color(0xFF208CC8)),
    CustomIncomeItem(
        text: 'Other', number: '22%', pointColor: Color(0xFF208CC8)),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => CustomIncomeItem(
              text: e.text, number: e.number, pointColor: e.pointColor))
          .toList(),
    );
  }
}
