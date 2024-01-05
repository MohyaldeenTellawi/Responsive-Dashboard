import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboeard/core/utils/styles.dart';
import 'package:responsive_dashboeard/modules/drawer_items_module.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key, required this.itemModule, required this.isActive});
  final DrawerItemModule itemModule;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(itemModule: itemModule)
        : InActiveDrawerItem(itemModule: itemModule);
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.itemModule});

  final DrawerItemModule itemModule;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModule.image),
      title: Text(itemModule.title, style: Styles.styleMeduim16),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.itemModule});

  final DrawerItemModule itemModule;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModule.image),
      title: Text(itemModule.title, style: Styles.styleBold16),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}
