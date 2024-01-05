import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/utils/styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image});
  final String title, subTitle, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title, style: Styles.styleSemiBold16),
        subtitle: Text(subTitle, style: Styles.styleReqular12),
      ),
    );
  }
}
