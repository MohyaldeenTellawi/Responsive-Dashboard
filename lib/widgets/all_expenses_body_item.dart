import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboeard/core/utils/styles.dart';

import 'package:responsive_dashboeard/modules/all_expenses_item_module.dart';

class AllExpensesBodyItem extends StatelessWidget {
  const AllExpensesBodyItem(
      {super.key, required this.expensesItemModule, required this.isSelected});

  final AllExpensesItemModule expensesItemModule;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(expensesItemModule: expensesItemModule)
        : InActiveAllExpensesItem(expensesItemModule: expensesItemModule);
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.expensesItemModule});

  final AllExpensesItemModule expensesItemModule;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            icon: expensesItemModule.icon,
            iconColor: Colors.white,
            backgroundColor: Colors.white.withOpacity(0.10000000149011612),
          ),
          const SizedBox(height: 34),
          Text(expensesItemModule.title,
              style: Styles.styleMeduim16.copyWith(color: Colors.white)),
          const SizedBox(height: 8),
          Text(expensesItemModule.data,
              style: Styles.styleReqular14.copyWith(color: Colors.white)),
          const SizedBox(height: 16),
          Text(expensesItemModule.price,
              style: Styles.styleSemiBold24.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.expensesItemModule,
  });

  final AllExpensesItemModule expensesItemModule;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(icon: expensesItemModule.icon),
          const SizedBox(height: 34),
          Text(expensesItemModule.title, style: Styles.styleMeduim16),
          const SizedBox(height: 8),
          Text(expensesItemModule.data, style: Styles.styleReqular14),
          const SizedBox(height: 16),
          Text(expensesItemModule.price, style: Styles.styleSemiBold24),
        ],
      ),
    );
  }
}

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.icon, this.iconColor, this.backgroundColor});

  final String icon;
  final Color? iconColor;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
              color: backgroundColor ?? const Color(0xFFFAFAFA),
              shape: const OvalBorder()),
          child: Center(
              child: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
                iconColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
          )),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: Icon(Icons.arrow_back_ios_new_outlined,
                color:
                    iconColor == null ? const Color(0xfff1f1f1) : Colors.white))
      ],
    );
  }
}
