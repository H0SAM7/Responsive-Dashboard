import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeChart2 extends StatefulWidget {
  const IncomeChart2({super.key});

  @override
  State<IncomeChart2> createState() => _IncomeChart2State();
}

class _IncomeChart2State extends State<IncomeChart2> {
  int activeIndx = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            activeIndx = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndx == 0 ? 1.5 : null,
            showTitle: true,
            title: activeIndx == 0 ? 'Design service' : '40%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndx == 0 ? null : Colors.white,
            ),
            value: 40,
            radius: activeIndx == 0 ? 60 : 50,
            color: const Color(0xFF208CC8),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndx == 1 ? 1.4 : null,
            showTitle: true,
            title: activeIndx == 1 ? 'Design product' : '25%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndx == 1 ? null : Colors.white,
            ),
            value: 25,
            radius: activeIndx == 1 ? 60 : 50,
            color: const Color(0xFF4EB7F2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndx == 2 ? 1.3 : null,
            title: activeIndx == 2 ? 'Product royalti' : '20%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndx == 2 ? null : Colors.white,
            ),
            showTitle: true,
            value: 20,
            radius: activeIndx == 2 ? 60 : 50,
            color: const Color(0xFF064061),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndx == 3 ? 1.5 : null,
            showTitle: true,
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndx == 3 ? null : Colors.white,
            ),
            title: activeIndx == 3? 'Other' : '22%',
            value: 22,
            radius: activeIndx == 3 ? 60 : 50,
            color: const Color(0xFFE2DECD),
          ),
        ]);
  }
}
