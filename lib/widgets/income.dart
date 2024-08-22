import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_chart_2.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';
import 'package:responsive_dashboard/widgets/range_options.dart';

class Income extends StatelessWidget {
  const Income({super.key});

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
          const IncomeSectionBody(),
        ],
      ),
    ));
  }
}

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    log(width.toString());
    return width >= 1200 && width <= 1830
        ? const Expanded(child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: IncomeChart2(),
        ))
        : const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails())
            ],
          );
  }
}
