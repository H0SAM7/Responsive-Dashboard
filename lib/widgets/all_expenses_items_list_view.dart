import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({
    super.key,
  });
  static const items = [
    AllExpensesModel(
      title: 'Balance',
      date: 'April 2022',
      price: '\$20,22',
      image: Assets.imagesBalance,
    ),
    AllExpensesModel(
        title: 'Income',
        date: 'April 2022',
        price: '\$20,22',
        image: Assets.imagesIncome),
    AllExpensesModel(
        title: 'Expenses ',
        date: 'April 2022',
        price: '\$20,22',
        image: Assets.imagesExpenses)
  ];

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  int selectedInd=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      //   children: items.map((e) => Expanded(child: AllExpensesItem(allExpensesModel: e))).toList(),
      children: AllExpensesItemsListView.items
          .asMap()
          .entries
          .map((e) => Expanded(
              child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: e.key == 1 ? 12.0 : 0),
            child: GestureDetector(
              onTap: (){
                setState(() {
                 selectedInd=e.key;
                });
              },
              child: AllExpensesItem(
                allExpensesModel: e.value,
                isSelected: selectedInd==e.key,
              ),
            ),
          )))
          .toList(),
    );
  }
}
