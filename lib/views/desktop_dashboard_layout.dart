import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/drawer.dart';
import 'package:responsive_dashboard/widgets/section_2_layout.dart';
import 'package:responsive_dashboard/widgets/section_3_layout.dart';

class DashboardDesktopLayoutView extends StatelessWidget {
  const DashboardDesktopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(

        children: [
          Expanded(
            flex: 1,
            child: CustomDrawer(),
          ),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 3,
            child: CustomScrollView(slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Section2Layot(),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Section3Layot(),
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
