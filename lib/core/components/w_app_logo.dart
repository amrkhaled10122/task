import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../assets/assets.gen.dart';
import 'text/w_text.dart';
import '../extensions/app_size_extension.dart';
import '../extensions/context_extensions.dart';

class WAppLogo extends StatelessWidget {
  final String title;
  const WAppLogo({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        40.heightBox,
        SizedBox(
            height: 1.sh / 6,
            child: Image.asset(
              Assets.appIcon.aliFouadLogo.path,
            )),
        20.heightBox,
        Center(child: WText(title, style: context.textTheme.displayMedium))
      ],
    );
  }
}
