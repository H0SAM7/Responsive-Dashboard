import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/drawer.dart';
import 'package:responsive_dashboard/widgets/income.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';
import 'package:responsive_dashboard/widgets/transction_history.dart';

class TabletLayoutView extends StatelessWidget {
  const TabletLayoutView({super.key});

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
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    AllExpenses(),
                    SizedBox(
                      height: 24,
                    ),
                    QuickInvoice(),
                    MyCardSection(),
                    TransctionHistory(),
                    Income(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
