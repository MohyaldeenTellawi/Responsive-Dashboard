import 'package:flutter/material.dart';
import 'package:responsive_dashboeard/core/utils/app_images.dart';
import 'package:responsive_dashboeard/modules/all_expenses_item_module.dart';
import 'package:responsive_dashboeard/widgets/all_expenses_body_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  final items = [
    const AllExpensesItemModule(
        icon: Assets.imagesMoneys,
        title: 'Balance',
        data: 'April 2022',
        price: r'$20.129'),
    const AllExpensesItemModule(
        icon: Assets.imagesCardReceive,
        title: 'Income',
        data: 'April 2023',
        price: r'$20.129'),
    const AllExpensesItemModule(
        icon: Assets.imagesCardSend,
        title: 'Expenses',
        data: 'April 2023',
        price: r'$20.129'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                selectedIndex = index;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
                child: AllExpensesBodyItem(
                  expensesItemModule: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
            onTap: () {
              selectedIndex = index;
              setState(() {});
            },
            child: AllExpensesBodyItem(
              expensesItemModule: item,
              isSelected: selectedIndex == index,
            ),
          ));
        }
      }).toList(),
    );
  }
}
