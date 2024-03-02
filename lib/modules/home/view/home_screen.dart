import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/components/scaffold/app_bar/w_shared_app_bar.dart';
import '../../../core/components/scaffold/w_shared_scaffold.dart';
import '../../../core/extensions/app_size_extension.dart';
import '../widget/categories_widget.dart';
import '../widget/user_info_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          60.h,
        ),
        child: const WSharedAppBar(
          removeBack: true,
          title: 'Home Page',
        ),
      ),
      body: _buildBodyWidget(),
    );
  }

  Widget _buildBodyWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [const UserInfo(), 20.heightBox, const UserCategoriesWidget()],
      ),
    );
  }
}
