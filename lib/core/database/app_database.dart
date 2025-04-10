import 'package:pregnancy_tracker_mobile_app_clone/domain/entities/exercise_entity.dart';

class AppDatabase {
  static List<ExerciseEntity> exerciseList = [
    ExerciseEntity(
      exerciseTitle: "Varta Asana",
      difficultyLevel: "Beginner",
      exerciseDuration: 7,
    ),
    ExerciseEntity(
      exerciseTitle: "Varta Asana",
      difficultyLevel: "Intermediate",
      exerciseDuration: 7,
    ),
    ExerciseEntity(
      exerciseTitle: "Varta Asana",
      difficultyLevel: "Advance",
      exerciseDuration: 7,
    ),
  ];
}
