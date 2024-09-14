import 'package:flutter/material.dart';
import 'package:hotel_it/widgets/custom_textstyles.dart';
import 'package:hotel_it/widgets/ui_helpers.dart';

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
            style: w600Style(14, Colors.black),
          ),
          const Spacer(),
          const Icon(
            Icons.chevron_right,
            size: 17,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
