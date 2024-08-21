import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/mobile_layout.dart';
import 'package:responsive_dashboard/views/tablet_layout_view.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/views/desktop_dashboard_layout.dart';



class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayoutView(),
        tabletLayout: (context) => const TabletLayoutView(),
        desktopLayout: (context) => const DashboardDesktopLayoutView(),
      ),
    );
  }
}
