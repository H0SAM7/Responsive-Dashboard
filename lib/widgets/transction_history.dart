import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transction_header.dart';
import 'package:responsive_dashboard/widgets/transction_item.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: TransctionHeader(),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context),
        ),
        const TransctionHistoryListView(),
      ],
    );
  }
}

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});
  static const items = [
    TransctionModel(
        title: 'Cash Withdrawal',
        amount: r'$20,129',
        date: '13 Apr, 2022 ',
        isWithdrawal: true),
    TransctionModel(
        title: 'Landing Page project',
        amount: r'$2,000',
        date: '13 Apr, 2022 at 3:30 PM',
        isWithdrawal: false),
    TransctionModel(
        title: 'Juni Mobile App project',
        amount: r'$20,129',
        date: '13 Apr, 2022 at 3:30 PM ',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transctionModel: e)).toList(),

    );
    // return ListView.builder(
    //     itemCount: items.length,
    //     //shrinkWrap: true,
    //     itemBuilder: (context, ind) {
    //       return TransactionItem(transctionModel: items[ind]);
    //     });
  }
}
