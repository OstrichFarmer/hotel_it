import 'package:flutter/material.dart';
import 'package:hotel_it/common/custom_textstyles.dart';
import 'package:hotel_it/common/ui_helpers.dart';

class ScreenTile extends StatelessWidget {
  const ScreenTile({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
  });

  final String icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(icon),
          horizontalSpaceSmall,
          Text(
            text,
            style: w600Style(14, Theme.of(context).colorScheme.onSurface),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward,
            size: 17,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
