import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashboard/widgets/latest_transiction_list_view.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';


class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 16,
          ),
          const LatestTransactionListView(),
          const Divider(
            color: Color(0xFFF1F1F1),
            height: 48,
          ),
          const QuickInvoiceForm(),
        ],
      ),
    );
  }
}
