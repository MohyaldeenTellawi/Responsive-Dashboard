import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/utils/app_images.dart';
import '../core/utils/styles.dart';

class CustomMycard extends StatelessWidget {
  const CustomMycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('My Card', style: Styles.styleSemiBold20),
        Stack(
          children: [
            SvgPicture.asset(Assets.imagesCardcolor),
            SvgPicture.asset(Assets.imagesBankcard),
          ],
        )
      ],
    );
  }
}
