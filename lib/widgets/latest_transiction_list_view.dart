
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/custom_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    DrawerItemModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail.com'),
    DrawerItemModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    DrawerItemModel(
        image: Assets.imagesAvatar3,
        title: 'Madraniadi',
        subtitle: 'Josh Nunito@gmail.com'),
    DrawerItemModel(
        image: Assets.imagesAvatar1,
        title: 'Josh Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            items.map((e) => IntrinsicWidth(child: CustomInfoListTile(drawerItemModel: e))).toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, ind) {
    //         return IntrinsicWidth(
    //           child: CustomInfoListTile(
    //             drawerItemModel: items[ind],
    //           ),
    //         );
    //       }),
    // );
  }
}
