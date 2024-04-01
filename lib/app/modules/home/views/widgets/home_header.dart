import 'package:coding_challenge_bri/app/config/app_config.dart';
import 'package:coding_challenge_bri/app/core/assets.dart';
import 'package:coding_challenge_bri/app/core/theme.dart';
import 'package:coding_challenge_bri/app/core/widgets/sizedbox.dart';
import 'package:coding_challenge_bri/app/core/widgets/text.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ESizedBox(
          width: 8.0,
        ),
        const CircleAvatar(
          radius: 16,
          backgroundImage: AssetImage(imgLogo),
        ),
        const ESizedBox(
          width: 12,
        ),
        EText(
          AppConfig.baseLeague,
          style: EFonts.montserrat(7, 22),
        )
      ],
    );
  }
}
