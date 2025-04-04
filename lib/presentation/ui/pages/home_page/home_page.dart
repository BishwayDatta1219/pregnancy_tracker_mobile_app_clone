import 'package:flutter/material.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/ui/pages/landing_page/widgets/animation_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            AnimationWidget(),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.33,
              color: Colors.yellow,
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.33,
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
