import 'package:flutter/material.dart';
import '../../../core/extensions/app_size_extension.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildItemWidget(icon: Icons.person, value: "Test01"),
        10.heightBox,
        _buildItemWidget(icon: Icons.phone, value: "0955555456"),
        10.heightBox,
        _buildItemWidget(icon: Icons.email, value: "amr@test.com"),
        10.heightBox,
      ],
    );
  }

  Widget _buildItemWidget({required IconData icon, required String value}) {
    return Row(
      children: [
        Icon(
          icon,
          size: 14,
        ),
        15.widthBox,
        Text(value)
      ],
    );
  }
}
