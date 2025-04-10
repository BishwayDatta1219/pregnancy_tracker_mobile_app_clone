import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/config/theme_management/app_text_style.dart';
import 'package:pregnancy_tracker_mobile_app_clone/domain/entities/exercise_entity.dart';

class ExerciseCardView extends StatelessWidget {
  final ExerciseEntity exerciseEntity;
  int _filledIcons = 0;

  ExerciseCardView({super.key, required this.exerciseEntity});

  @override
  Widget build(BuildContext context) {
    if (exerciseEntity.difficultyLevel.toLowerCase() == "beginner") {
      _filledIcons = 1;
    } else if (exerciseEntity.difficultyLevel.toLowerCase() == "intermediate") {
      _filledIcons = 2;
    } else if (exerciseEntity.difficultyLevel.toLowerCase() == "advance") {
      _filledIcons = 3;
    }

    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurpleAccent.withValues(alpha: 0.1),
            spreadRadius: 2.0,
            blurRadius: 5.0,
            offset: Offset(0, -1),
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
                    style: AppTextStyle.exerciseTitleTextStyle,
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
                        style: AppTextStyle.exerciseDifficultyLevelTextStyle,
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
                        style: AppTextStyle.exerciseDurationTextStyle,
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
                  image: AssetImage(exerciseEntity.imagePath),
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
