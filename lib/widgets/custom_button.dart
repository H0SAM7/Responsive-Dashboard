import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.color,  this.txtColor});
  final String title;
  final Color color;
    final Color? txtColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          onPressed: () {},
          child: Text(
            title,
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: txtColor,
            ),
          )),
    );
  }
}
