import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashboard/widgets/income_chart_2.dart';
import 'package:responsive_dashboard/widgets/range_options.dart';

class IncomeMobileLayout extends StatelessWidget {
  const IncomeMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        child: Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Income',
                style: AppStyles.styleSemiBold20(context),
              ),
              const Spacer(),
              const RangeOptions(),
            ],
          ),
          const IncomeChart2(),
        ],
      ),
    ));
  }
}
