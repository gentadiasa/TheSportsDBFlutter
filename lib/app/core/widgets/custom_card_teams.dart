import 'package:coding_challenge_bri/app/core/theme.dart';
import 'package:coding_challenge_bri/app/core/widgets/padding.dart';
import 'package:coding_challenge_bri/app/core/widgets/text.dart';
import 'package:flutter/material.dart';

class CustomCardTeams extends StatelessWidget {
  const CustomCardTeams({
    super.key,
    required this.title,
    required this.subtitle,
    required this.backgroundImage,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final String backgroundImage;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return EPadding(
      padding: const EdgeInsets.only(
        left: 14,
        top: 14,
        right: 14,
      ),
      child: Card(
        child: ListTile(
          title: EText(
            title,
            style: EFonts.montserrat(6, 16),
          ),
          subtitle: EText(
            subtitle,
            style: EFonts.montserrat(5, 14),
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 24,
            backgroundImage: NetworkImage(backgroundImage),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 24,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
