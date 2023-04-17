import 'package:flutter/material.dart';
import 'package:flutter_todo/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.showLeading = true})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  final bool showLeading;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        elevation: 0,
        automaticallyImplyLeading: showLeading,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.check_circle_outline),
            Text('To-Do Application')
          ],
        ));
  }
}
