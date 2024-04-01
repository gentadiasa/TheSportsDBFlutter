// ignore_for_file: deprecated_member_use

import 'package:coding_challenge_bri/app/core/theme.dart';
import 'package:coding_challenge_bri/app/core/widgets/padding.dart';
import 'package:coding_challenge_bri/app/core/widgets/sizedbox.dart';
import 'package:coding_challenge_bri/app/core/widgets/text.dart';
import 'package:coding_challenge_bri/app/modules/detail/views/widgets/detail_description.dart';
import 'package:coding_challenge_bri/app/modules/detail/views/widgets/detail_logo.dart';
import 'package:coding_challenge_bri/app/modules/detail/views/widgets/detail_stadium.dart';
import 'package:coding_challenge_bri/app/modules/detail/views/widgets/team_jersey.dart';
import 'package:coding_challenge_bri/app/modules/detail/views/widgets/toogle_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back,
            color: white,
          ),
        ),
        title: EText(
          controller.teams.alternateName,
          style: EFonts.montserrat(
            6,
            18,
            white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: EPadding(
          padding: const EdgeInsets.all(16.0),
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Logo Detail
                DetailImg(imageNetwork: controller.teams.logoUrl),
                const ESizedBox(height: 18),

                // Detail Description
                DetailDescription(
                  description: controller.teams.description ?? '',
                  maxLines: controller.isExpanded.value == true ? 1000 : 2,
                ),

                // Toogle Show More/Show Less
                controller.isExpanded.value == false
                    ? ToggleText(
                        toogleTittle: 'Show More',
                        onPressed: () => controller.toggleExpansion())
                    : ToggleText(
                        toogleTittle: 'Show Less',
                        onPressed: () => controller.toggleExpansion()),

                const ESizedBox(height: 18),

                // Detail Stadium
                DetailStadium(
                  imageStadium: controller.teams.stadiumThumb,
                  stadiumInformationTitleLeft1: controller.teams.stadiumName,
                  stadiumInformationTitleRight1:
                      controller.teams.stadiumLocation,
                  stadiumInformationTitleLeft2:
                      'Capacity: ${controller.teams.stadiumCapacity}',
                  stadiumInformationTitleRight2: controller.teams.website,
                ),

                const ESizedBox(height: 40),

                // Team Jersey
                TeamJersey(
                  title: 'Team Jersey:',
                  imageNetwork: controller.teams.jersey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
