import 'package:coding_challenge_bri/app/core/theme.dart';
import 'package:coding_challenge_bri/app/core/widgets/sizedbox.dart';
import 'package:coding_challenge_bri/app/core/widgets/text.dart';
import 'package:flutter/material.dart';

class StadiumAttribute extends StatelessWidget {
  const StadiumAttribute({
    super.key,
    required this.icons,
    required this.iconsTitle,
  });

  final IconData icons;
  final String iconsTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Icon(icons),
          const ESizedBox(
            width: 5.0,
          ),
          Flexible(
            child: EText(
              iconsTitle,
              style: EFonts.montserrat(5, 14),
            ),
          ),
        ],
      ),
    );
  }
}
