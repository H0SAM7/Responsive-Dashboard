import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/income.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';
import 'package:responsive_dashboard/widgets/transction_history.dart';

class MobileLayoutView extends StatelessWidget {
  const MobileLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MediaQuery.sizeOf(context).width <800?AppBar(
        elevation: 0,
        leading: const Icon(Icons.menu,color: Color(0xFF4EB7F2),),
      ):null,
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
    );
  }
}








