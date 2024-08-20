import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_model.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesModel, required this.isSelected});
  final AllExpensesModel allExpensesModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItems(allExpensesModel: allExpensesModel)
        : InActiveAllExpensesItems(allExpensesModel: allExpensesModel);
  }
}
