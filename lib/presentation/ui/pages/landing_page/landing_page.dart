import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pregnancy_tracker_mobile_app_clone/domain/exercise_entity.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/ui/pages/landing_page/widgets/content_header.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/ui/pages/landing_page/widgets/exercise_card_view_item.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  List<ExerciseEntity> exerciseList = [
    ExerciseEntity(exerciseTitle: "Vatra Asana", difficultyLevel: "Beginner", exerciseDuration: 7),
    ExerciseEntity(exerciseTitle: "Hala Asana", difficultyLevel: "Advance", exerciseDuration: 10),
    ExerciseEntity(exerciseTitle: "Bazra Asana", difficultyLevel: "Intermediate", exerciseDuration: 300),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFefedfb),
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Center(
              child: _buildBannerView(
                bannerImage: AssetImage(
                  "assets/images/pregnant_banner_image_01.jpg",
                ),
                bannerTitle: "Balancing",
                bannerDescription:
                    "Get active on your off days and challenge your friends. Get active on your off days and challenge your friends",
              ),
            ),
          ),
          ContentHeader(contentHeaderTitle: "Daily Exercise"),
          Expanded(child: _buildExerciseList()),
        ],
      ),
    );
  }

  _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(60.0),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Icon(
                Icons.arrow_back_rounded,
                size: 24.0,
                color: Colors.black87,
              ),
            ),
            Center(
              child: Text(
                "Maternal Exercice",
                style: GoogleFonts.poppins(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Icon(
                Icons.notifications_outlined,
                size: 24.0,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBannerView({
    required String bannerTitle,
    required String bannerDescription,
    required AssetImage bannerImage,
  }) {
    return Stack(
      children: [
        Container(
          width: 380.0,
          height: 380.0,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image(image: bannerImage, fit: BoxFit.cover),
          ),
        ),
        Container(
          width: 380.0,
          height: 380.0,
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        Positioned(
          top: 90.0,
          left: 20.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bannerTitle,
                style: GoogleFonts.poppins(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 240,
                height: 130,
                child: Text(
                  textAlign: TextAlign.left,
                  bannerDescription,
                  style: GoogleFonts.poppins(
                    fontSize: 18.0,
                    color: Color(0xFFf8f8f8),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            image: AssetImage(
                              "assets/images/pregnant_banner_image_01.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: ClipRRect(
                            child: Image(
                              image: AssetImage(
                                "assets/images/pregnant_banner_image.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.purpleAccent.shade100,
                              Colors.deepPurpleAccent.shade200,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            "+12",
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 120.0),
                  GestureDetector(
                    onTap: () => print("Let's Start!!"),
                    child: Container(
                      width: 100.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Center(
                        child: Text(
                          "Start",
                          style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildExerciseList() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: ListView.builder(
        itemCount: exerciseList.length,
        itemBuilder: (context, index) {
          var exercise = exerciseList[index];
          return Container(
            margin: EdgeInsets.only(top: index == 0 ? 8 : 0),
            padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16, top: 16),
            child: ExerciseCardViewItem(
              exerciseEntity: exercise,
            ),
          );
        },
      ),
    );
  }
}
