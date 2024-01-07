import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboeard/modules/user_info_module.dart';

import '../core/utils/styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModule});

  final UserInfoModule userInfoModule;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModule.image),
          title: Text(userInfoModule.title, style: Styles.styleSemiBold16),
          subtitle: Text(userInfoModule.subTitle, style: Styles.styleReqular12),
        ),
      ),
    );
  }
}
