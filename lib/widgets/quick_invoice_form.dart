import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hint: 'Type customer name',
              ),
            ),
            Expanded(
              child: TitleTextField(
                title: 'item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                color: Colors.white,
                txtColor: Color(0xFF4EB7F2),
              ),
            ),
               SizedBox(height: 24,),
            Expanded(
              child: CustomButton(
                title: 'Send Money',
                color: Color(0xFF4EB7F2),
              ),
            ),
          ],
        )
      ],
    );
  }
}
