import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({
    super.key,
  });

  static const items = [
    IncomeDetailsModel(
        title: 'Design service', percent: '40%', color: Color(0xFF208CC8)),
    IncomeDetailsModel(
        title: 'Design product', percent: '25%', color: Color(0xFF4EB7F2)),
    IncomeDetailsModel(
        title: 'Product royalti', percent: '20%', color: Color(0xFF064061)),
    IncomeDetailsModel(
        title: 'Other', percent: '22%', color: Color(0xFFE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, ind) {
        return ItemDetails(itemDetailsModel: items[ind]);
      },
    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key,
    required this.itemDetailsModel,
  });

  final IncomeDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.percent,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
