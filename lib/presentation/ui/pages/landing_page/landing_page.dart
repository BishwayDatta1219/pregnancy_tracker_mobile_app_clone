import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
          _buildContentHeaderSection(contentHeaderTitle: "Daily Exercise"),
          _buildExerciseCardView(),
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

  Widget _buildContentHeaderSection({required String contentHeaderTitle}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            contentHeaderTitle,
            style: GoogleFonts.poppins(
              fontSize: 18.0,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(
            Icons.more_horiz_rounded,
            color: Colors.black87,
            size: 25.0,
          ),
        ),
      ],
    );
  }

  Widget _buildExerciseCardView() {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2.0,
              blurRadius: 4.0,
              offset: Offset(-0.5, 0.5),
            ),
          ],
        ),
        child: Row(
          children: [
            //  Difficulty level, Exercise Name, Type and Duration
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          top: 30.0,
                          bottom: 20.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.fire,
                              size: 25.0,
                              color: Color(0xFF917af1),
                            ),
                            SizedBox(width: 3.0),
                            Icon(
                              FontAwesomeIcons.fire,
                              size: 25.0,
                              color: Color(0xFF917af1),
                            ),
                            SizedBox(width: 3.0),
                            Icon(
                              FontAwesomeIcons.fire,
                              size: 25.0,
                              color: Color(0xFFd6d8e1),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Varta Asana",
                          style: GoogleFonts.poppins(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          top: 15.0,
                          bottom: 10.0,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Beginner",
                              style: GoogleFonts.poppins(
                                color: Color(0xFF818187),
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(width: 7.0),
                            Container(
                              width: 4.0,
                              height: 4.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF818187),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            SizedBox(width: 7.0),
                            Text(
                              "7 mins",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Color(0xFF818187),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.0),

            //  Image Section
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  child: Image(
                    image: AssetImage(
                      "assets/images/pregnant_exercise_card_varta_asana.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
