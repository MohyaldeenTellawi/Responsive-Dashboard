import 'package:flutter/material.dart';
import '../core/utils/app_images.dart';
import '../core/utils/styles.dart';
import '../modules/user_info_module.dart';
import 'user_info_list_tile.dart';

class QuickInvoiceLatestTransaction extends StatelessWidget {
  const QuickInvoiceLatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: Styles.styleMeduim16),
        SizedBox(height: 12),
        QuickInvoiceLatestTransactionListView()
      ],
    );
  }
}

class QuickInvoiceLatestTransactionListView extends StatelessWidget {
  const QuickInvoiceLatestTransactionListView({super.key});

  static const items = [
    UserInfoModule(
        image: Assets.imagesUsericon,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModule(
        image: Assets.imagesUsericon,
        title: 'Josua Nunito',
        subTitle: 'JoshNunito@gmail.com'),
    UserInfoModule(
        image: Assets.imagesUsericon,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModule(
        image: Assets.imagesUsericon,
        title: 'Josua Nunito',
        subTitle: 'JoshNunito@gmail.com'),
    UserInfoModule(
        image: Assets.imagesUsericon,
        title: 'Josua Nunito',
        subTitle: 'JoshNunito@gmail.com'),
    UserInfoModule(
        image: Assets.imagesUsericon,
        title: 'Josua Nunito',
        subTitle: 'JoshNunito@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModule: e)))
            .toList(),
      ),
    );
  }
}
