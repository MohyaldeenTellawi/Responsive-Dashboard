import 'package:flutter/material.dart';
import 'package:responsive_dashboeard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboeard/widgets/desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DsektopLayout(),
      ),
    );
  }
}
