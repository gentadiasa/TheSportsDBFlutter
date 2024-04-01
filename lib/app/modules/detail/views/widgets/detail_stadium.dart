import 'package:coding_challenge_bri/app/core/widgets/sizedbox.dart';
import 'package:coding_challenge_bri/app/modules/detail/views/widgets/stadium_information.dart';
import 'package:coding_challenge_bri/app/modules/detail/views/widgets/title_divider.dart';
import 'package:flutter/material.dart';

class DetailStadium extends StatelessWidget {
  const DetailStadium({
    super.key,
    required this.imageStadium,
    required this.stadiumInformationTitleLeft1,
    required this.stadiumInformationTitleRight1,
    required this.stadiumInformationTitleLeft2,
    required this.stadiumInformationTitleRight2,
  });

  final String imageStadium;
  final String stadiumInformationTitleLeft1;
  final String stadiumInformationTitleRight1;
  final String stadiumInformationTitleLeft2;
  final String stadiumInformationTitleRight2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleDivider(
          title: 'Stadium:',
        ),
        const ESizedBox(height: 15),
        Image.network(imageStadium),
        const ESizedBox(height: 18),

        // Stadium Information
        StadiumInformation(
          iconsLeft: Icons.stadium,
          iconsTitleLeft: stadiumInformationTitleLeft1,
          iconsRight: Icons.location_on,
          iconsTitleRight: stadiumInformationTitleRight1,
        ),
        const ESizedBox(height: 10),
        StadiumInformation(
          iconsLeft: Icons.people_alt,
          iconsTitleLeft: stadiumInformationTitleLeft2,
          iconsRight: Icons.public,
          iconsTitleRight: stadiumInformationTitleRight2,
        ),
      ],
    );
  }
}
