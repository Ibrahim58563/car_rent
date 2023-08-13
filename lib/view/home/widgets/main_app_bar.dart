import 'package:flutter/material.dart';

import '../../../res/strings.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            const Icon(Icons.info_outline_rounded),
            const SizedBox(
              width: 5,
            ),
            Text(AppStrings.information)
          ],
        ),
        Row(
          children: [
            const Stack(alignment: Alignment.topRight, children: [
              Icon(Icons.notifications_none_rounded),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 5,
              )
            ]),
            const SizedBox(
              width: 5,
            ),
            Text(AppStrings.notification)
          ],
        ),
      ],
    );
  }
}
