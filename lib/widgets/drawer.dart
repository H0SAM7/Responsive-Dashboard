import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_item.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_list_view.dart';
import 'package:responsive_dashboard/widgets/custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomInfoListTile(
              drawerItemModel: DrawerItemModel(
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
                image: Assets.imagesAvatar1,
              ),
            ),
          ),
          SliverToBoxAdapter(child: DrawerItemsListView()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InactiveListTIle(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesSettings, title: 'Settings'),
                ),
                InactiveListTIle(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesLogout, title: 'Logout Account'),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
