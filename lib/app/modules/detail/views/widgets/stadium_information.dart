import 'package:coding_challenge_bri/app/core/widgets/sizedbox.dart';
import 'package:coding_challenge_bri/app/modules/detail/views/widgets/stadium_attribute.dart';
import 'package:flutter/material.dart';

class StadiumInformation extends StatelessWidget {
  const StadiumInformation({
    super.key,
    required this.iconsLeft,
    required this.iconsRight,
    required this.iconsTitleLeft,
    required this.iconsTitleRight,
  });

  final IconData iconsLeft;
  final IconData iconsRight;
  final String iconsTitleLeft;
  final String iconsTitleRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        StadiumAttribute(
          icons: iconsLeft,
          iconsTitle: iconsTitleLeft,
        ),
        const ESizedBox(
          width: 5.0,
        ),
        StadiumAttribute(
          icons: iconsRight,
          iconsTitle: iconsTitleRight,
        ),
      ],
    );
  }
}
