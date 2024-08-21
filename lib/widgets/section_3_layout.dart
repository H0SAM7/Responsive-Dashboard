import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/transction_history.dart';

class Section3Layot extends StatelessWidget {
  const Section3Layot({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      MyCardSection(),
      TransctionHistory(),
      Income(),
    ],);
  }
}