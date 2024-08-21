import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/drawer.dart';
import 'package:responsive_dashboard/widgets/income.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';
import 'package:responsive_dashboard/widgets/transction_history.dart';

class MobileLayoutView extends StatefulWidget {
  const MobileLayoutView({super.key});

  @override
  State<MobileLayoutView> createState() => _MobileLayoutViewState();
}

class _MobileLayoutViewState extends State<MobileLayoutView> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.menu, color: Color(0xFF4EB7F2)),
                onPressed: () {
                 scaffoldkey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      body: const SingleChildScrollView(
        child: Column(
          children: [
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
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
    );
  }
}
