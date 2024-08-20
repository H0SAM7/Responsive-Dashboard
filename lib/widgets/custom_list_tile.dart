
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomInfoListTile extends StatelessWidget {
  const CustomInfoListTile({
    super.key, required this.drawerItemModel,
   
  });
final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: ListTile(
          leading: SvgPicture.asset(drawerItemModel.image),
          title: Text(
           drawerItemModel.title,
            style: AppStyles.styleBold16(context),
          ),
          subtitle: Text(
           drawerItemModel.subtitle??'',
            style: AppStyles.styleRegular12(context),
          ),
          onTap: () {}),
    );
  }
}
