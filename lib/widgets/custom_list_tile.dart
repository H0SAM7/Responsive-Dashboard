
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class InfoListTile extends StatelessWidget {
  const InfoListTile({
    super.key,
    required this.title,
     this.subtitle,
    required this.image,
  });
  final String? title, subtitle, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: ListTile(
          leading: SvgPicture.asset(image!),
          title: Text(
            title!,
            style: AppStyles.styleBold16(context),
          ),
          subtitle: Text(
           subtitle??'',
            style: AppStyles.styleRegular12(context),
          ),
          onTap: () {}),
    );
  }
}
