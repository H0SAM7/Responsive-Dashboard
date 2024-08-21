import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
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
            showTitle: false,
            //   title: 'Design service',
            value: 40,
            radius: activeIndx == 0 ? 60 : 50,
            color: const Color(0xFF208CC8),
          ),
          PieChartSectionData(
            showTitle: false,
            // title: 'Design product',
            value: 25,
            radius: activeIndx == 1 ? 60 : 50,
            color: const Color(0xFF4EB7F2),
          ),
          PieChartSectionData(
            // title: 'Product royalti',
            showTitle: false,
            value: 20,
            radius: activeIndx == 2 ? 60 : 50,
            color: const Color(0xFF064061),
          ),
          PieChartSectionData(
            showTitle: false,
            //  title: 'Other',
            value: 22,
            radius: activeIndx == 3 ? 60 : 50,
            color: const Color(0xFFE2DECD),
          ),
        ]);
  }
}
