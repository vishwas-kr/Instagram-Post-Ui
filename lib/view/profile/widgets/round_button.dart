import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.iconPath,
    required this.onTap,
  }) : super(key: key);
  final String iconPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: AppColors.white),
      child: InkWell(
        onTap: onTap,
        child: Image.asset(
          iconPath,
          width: 20,
        ),
      ),
    );
  }
}
