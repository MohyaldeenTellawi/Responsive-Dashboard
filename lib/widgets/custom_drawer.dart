import 'package:flutter/material.dart';
import 'package:responsive_dashboeard/core/utils/app_images.dart';
import 'package:responsive_dashboeard/modules/drawer_items_module.dart';
import 'package:responsive_dashboeard/widgets/custom_drawer_item.dart';
import 'package:responsive_dashboeard/widgets/user_info_list_tile.dart';
import 'drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: UserInfoListTile(
                  title: 'Mohyaldeen Tellawi',
                  subTitle: 'mohyaldeentellawi@gmail.com',
                  image: Assets.imagesUsericon)),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                    itemModule: DrawerItemModule(
                        title: 'Settings', image: Assets.imagesItem6)),
                InActiveDrawerItem(
                    itemModule: DrawerItemModule(
                        title: 'LogOut Account', image: Assets.imagesItem7)),
                SizedBox(height: 48)
              ],
            ),
          )
        ],
      ),
    );
  }
}
