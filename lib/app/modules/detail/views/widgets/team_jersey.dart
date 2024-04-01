import 'package:coding_challenge_bri/app/core/widgets/sizedbox.dart';
import 'package:coding_challenge_bri/app/modules/detail/views/widgets/detail_logo.dart';
import 'package:coding_challenge_bri/app/modules/detail/views/widgets/title_divider.dart';
import 'package:flutter/material.dart';

class TeamJersey extends StatelessWidget {
  const TeamJersey({
    super.key,
    required this.title,
    required this.imageNetwork,
  });

  final String title;
  final String imageNetwork;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleDivider(
          title: title,
        ),
        const ESizedBox(height: 15),
        DetailImg(imageNetwork: imageNetwork),
      ],
    );
  }
}
