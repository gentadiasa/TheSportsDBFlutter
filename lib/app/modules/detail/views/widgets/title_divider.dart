import 'package:coding_challenge_bri/app/core/theme.dart';
import 'package:coding_challenge_bri/app/core/widgets/text.dart';
import 'package:flutter/material.dart';

class TitleDivider extends StatelessWidget {
  const TitleDivider({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return EText(
      title,
      style: EFonts.montserrat(8, 18),
    );
  }
}
