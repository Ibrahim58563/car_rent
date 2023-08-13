import 'package:flutter/material.dart';

Padding secondaryAppBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 25.0,
      vertical: 40,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        const Icon(Icons.settings),
      ],
    ),
  );
}
