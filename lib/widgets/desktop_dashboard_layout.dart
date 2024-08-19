import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/drawer.dart';

class DashboardDesktopLayoutView extends StatelessWidget {
  const DashboardDesktopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Row(children: [
        Expanded(child: CustomDrawer()),
   
      ],),
    );
  }
}