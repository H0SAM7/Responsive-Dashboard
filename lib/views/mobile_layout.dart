import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/drawer.dart';
import 'package:responsive_dashboard/widgets/income_mobile_layout.dart';
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
      appBar: MediaQuery.sizeOf(context).width < 850
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFF4EB7F2),
              leading: IconButton(
                icon: const Icon(Icons.menu, color: Color.fromARGB(255, 255, 255, 255)),
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
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MyCardSection(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TransctionHistory(),
            ),
            IncomeMobileLayout(),
          ],
        ),
      ),
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
    );
  }
}


