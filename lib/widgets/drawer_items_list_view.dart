import 'package:flutter/material.dart';

import '../core/utils/app_images.dart';
import '../modules/drawer_items_module.dart';
import 'custom_drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModule> items = [
    const DrawerItemModule(title: 'Dashboard', image: Assets.imagesItem1),
    const DrawerItemModule(title: 'My Transaction', image: Assets.imagesItem2),
    const DrawerItemModule(title: 'Stattics', image: Assets.imagesItem3),
    const DrawerItemModule(title: 'Wallet Account', image: Assets.imagesItem4),
    const DrawerItemModule(title: 'My Investments', image: Assets.imagesItem5),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (selectedIndex != index) {
                selectedIndex = index;
                setState(() {});
              }
            },
            child: Padding(
                padding: const EdgeInsetsDirectional.only(top: 20),
                child: CustomDrawerItem(
                  itemModule: items[index],
                  isActive: selectedIndex == index,
                )),
          );
        });
  }
}
