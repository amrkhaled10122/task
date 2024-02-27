import 'package:flutter/material.dart';

class WSharedScaffold extends StatelessWidget {
  WSharedScaffold({
    required this.body,
    super.key,
    this.appBar,
    this.bottomSheet,
    this.onTap,
    this.isNaVBar = false,
  });

  final Widget body;
  final Widget? bottomSheet;
  final PreferredSizeWidget? appBar;
  final Function? onTap;
  final bool isNaVBar;

  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Close the keyboard when click anywhere on the screen except an input field.
      onTap: () => onTap?.call() ?? FocusScope.of(context).focusedChild?.unfocus(),
      child: Scaffold(
        appBar: appBar,
        body: body,
        bottomSheet: bottomSheet,
      ),
    );
  }
}
