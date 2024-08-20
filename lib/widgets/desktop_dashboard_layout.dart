import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/drawer.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

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
            flex: 2,
            child: Column(
              children: [
                AllExpenses(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
