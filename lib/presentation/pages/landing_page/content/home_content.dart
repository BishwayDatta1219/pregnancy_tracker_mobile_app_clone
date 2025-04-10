import 'package:flutter/cupertino.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/config/asset_management/app_icons.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/widgets/landing_page_widgets/banner/body_banner.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/widgets/landing_page_widgets/header_section/header_section.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BodyBanner(
          bannerTitle: "Balancing",
          bannerDescription:
              "Get active on your off days and challenge your friends. Get active on your off days and challenge your friends",
        ),
        HeaderSection(
          contentHeaderTitle: "Daily Exercises",
          contentrHeaderIcon: AppIcons.headerSectionIcon,
        ),
      ],
    );
  }
}
