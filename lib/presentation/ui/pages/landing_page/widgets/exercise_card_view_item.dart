import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pregnancy_tracker_mobile_app_clone/domain/exercise_entity.dart';

class ExerciseCardViewItem extends StatelessWidget {
  final ExerciseEntity exerciseEntity;
  int _filledIcons = 0;

  ExerciseCardViewItem({super.key, required this.exerciseEntity});

  @override
  Widget build(BuildContext context) {
    if (exerciseEntity.difficultyLevel.toLowerCase() == "beginner") {
      _filledIcons = 1;
    } else if (exerciseEntity.difficultyLevel.toLowerCase() == "intermediate") {
      _filledIcons = 2;
    } else if (exerciseEntity.difficultyLevel.toLowerCase() == "advance") {
      _filledIcons = 3;
    } else {
      _filledIcons = 0;
    }

    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 10.0,
            blurRadius: 10.0,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          //  Difficulty level, Exercise Name, Type and Duration
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 30.0,
                    bottom: 20.0,
                  ),
                  child: Row(
                    children: List.generate(3, (index) {
                      return Icon(
                        FontAwesomeIcons.fire,
                        size: 24.0,
                        color:
                            index < _filledIcons
                                ? Color(0xFF8B79F0)
                                : Color(0xFFD6D8E1),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    exerciseEntity.exerciseTitle,
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
                        exerciseEntity.difficultyLevel,
                        style: GoogleFonts.poppins(
                          color: Color(0xFF818187),
                          fontSize: 12.0,
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
                        "${exerciseEntity.exerciseDuration} mins",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Color(0xFF818187),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            flex: 4,
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/pregnant_exercise_card_varta_asana.jpg",
                  ),
                  fit: BoxFit.fitHeight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
