import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/components/text/w_text.dart';
import '../../../core/services/preference/preference_manager.dart';
import '../../../core/extensions/app_size_extension.dart';
import '../../../core/routes/app_pages.dart';

class UserCategoriesWidget extends StatelessWidget {
  const UserCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _builditemWidget(
          title: "Update Information",
          onTap: () => Get.toNamed(Routes.profile),
        ),
        const Divider(),
        10.heightBox,
        _builditemWidget(
          title: "Chanage Password",
          onTap: () {},
        ),
        const Divider(),
        10.heightBox,
        _builditemWidget(
          title: "Delete Account",
          onTap: () {},
        ),
        const Divider(),
        10.heightBox,
        _builditemWidget(
          title: "Logout",
          onTap: () async {
            // final PreferenceManager prefernce = Get.find(tag: (PreferenceManager).toString());
            // await prefernce.clear();
            Get.offAllNamed(Routes.login);
          },
        ),
        const Divider(),
        10.heightBox,
      ],
    );
  }

  Widget _builditemWidget({required String title, void Function()? onTap}) {
    return Card(
      child: ListTile(
        title: WText(
          title,
        ),
        trailing: const RotatedBox(
            quarterTurns: 2,
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
            )),
        onTap: onTap,
      ),
    );
  }
}
