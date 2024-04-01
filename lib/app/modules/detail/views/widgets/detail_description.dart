import 'package:coding_challenge_bri/app/core/theme.dart';
import 'package:coding_challenge_bri/app/core/widgets/sizedbox.dart';
import 'package:coding_challenge_bri/app/modules/detail/views/widgets/title_divider.dart';
import 'package:flutter/material.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({
    super.key,
    required this.description,
    required this.maxLines,
  });

  final String description;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleDivider(
          title: 'Description:',
        ),
        const ESizedBox(height: 10),
        Text(
          description,
          style: EFonts.montserrat(5, 14),
          maxLines: maxLines,
        ),
      ],
    );
  }
}
