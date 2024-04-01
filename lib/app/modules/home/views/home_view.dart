import 'package:coding_challenge_bri/app/core/widgets/padding.dart';
import 'package:coding_challenge_bri/app/core/widgets/sizedbox.dart';
import 'package:coding_challenge_bri/app/core/widgets/custom_card_teams.dart';
import 'package:coding_challenge_bri/app/modules/home/views/widgets/home_header.dart';
import 'package:coding_challenge_bri/app/routes/app_arguments.dart';
import 'package:coding_challenge_bri/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  void _detailPage(int index) {
    Get.toNamed(
      Routes.DETAIL,
      arguments: DetailArguments(
        teams: controller.listTeams[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const HomeHeader(),
      ),
      body: Obx(
        () => controller.isLoading.value && controller.dataListTeams.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : NotificationListener<ScrollNotification>(
                onNotification: (ScrollNotification scrollInfo) {
                  if (scrollInfo is ScrollEndNotification &&
                      scrollInfo.metrics.pixels ==
                          scrollInfo.metrics.maxScrollExtent) {
                    controller.loadMore();
                  }
                  return false;
                },
                child: ListView.separated(
                  separatorBuilder: (_, __) {
                    return const ESizedBox(
                      height: 1.0,
                    );
                  },
                  itemCount: controller.dataListTeams.length +
                      (controller.isLoadingMore.value ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index == controller.dataListTeams.length &&
                        controller.isLoadingMore.value) {
                      return const EPadding(
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 30),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    } else {
                      final team = controller.dataListTeams[index];
                      return CustomCardTeams(
                        title: '${team.name} ${team.shortName != '' ? '(${team.shortName})' : ''}',
                        subtitle: team.sport,
                        backgroundImage: team.logoUrl,
                        onTap: () => _detailPage(index),
                      );
                    }
                  },
                ),
              ),
      ),
    );
  }
}
