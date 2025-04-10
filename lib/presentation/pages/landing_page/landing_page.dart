import 'package:flutter/material.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/config/theme_management/app_colors.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/pages/landing_page/content/counter_content.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/pages/landing_page/content/home_content.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/pages/landing_page/content/medical_content.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/pages/landing_page/content/profile_content.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/widgets/landing_page_widgets/app_bar/custom_app_bar.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/widgets/landing_page_widgets/notched_bottom_appbar/notched_bottom_appbar.dart';

import '../../widgets/landing_page_widgets/fab/custom_fab.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late int _selectedBottomAppbarIndex = 0;

  _setSelectedBottomAppbarIndex(int index) {
    setState(() {
      _selectedBottomAppbarIndex = index;
    });
  }

  Widget _getContent() {
    if (_selectedBottomAppbarIndex == 0) {
      return HomeContent();
    } else if (_selectedBottomAppbarIndex == 1) {
      return MedicalContent();
    } else if (_selectedBottomAppbarIndex == 2) {
      return CounterContent();
    } else if (_selectedBottomAppbarIndex == 3) {
      return ProfileContent();
    }

    return Center(child: Text("ERROR!!"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      appBar: CustomAppBar(appbarTitle: 'Maternal Exercise'),
      body: _getContent(),
      floatingActionButton: CustomFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NotchedBottomAppbar(
        selectedIndex: _selectedBottomAppbarIndex,
        onIndexChanged: _setSelectedBottomAppbarIndex,
      ),
    );
  }
}
