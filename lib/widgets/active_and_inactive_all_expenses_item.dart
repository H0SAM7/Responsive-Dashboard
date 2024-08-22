import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItems extends StatelessWidget {
  const InActiveAllExpensesItems({
    super.key,
    required this.allExpensesModel,
  });

  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          side: BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesModel.image,
            color: const Color(0xFF064061),
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
             fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.title,
              style: AppStyles.styleMedium16(context),
            ),
          ),
          FittedBox(
             fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          FittedBox(
             fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItems extends StatelessWidget {
  const ActiveAllExpensesItems({
    super.key,
    required this.allExpensesModel,
  });

  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: const ShapeDecoration(
        color: Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          side: BorderSide(
            width: 1,
            color: Color(0xFF4EB7F2),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesModel.image,
            color: const Color(0xFFFAFAFA),
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
             fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.title,
              style:
                  AppStyles.styleMedium16(context).copyWith(color: Colors.white),
            ),
          ),
          FittedBox(
             fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: Colors.white.withOpacity(.5)),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
