import 'package:pregnancy_tracker_mobile_app_clone/core/config/asset_management/app_images.dart';
import 'package:pregnancy_tracker_mobile_app_clone/domain/entities/exercise_entity.dart';

class AppDatabase {
  static List<ExerciseEntity> exerciseList = [
    ExerciseEntity(
      exerciseTitle: "Varta Asana",
      difficultyLevel: "Beginner",
      exerciseDuration: 7,
      imagePath: AppImages.bannerFooterImage01,
    ),
    ExerciseEntity(
      exerciseTitle: "Setu Bandhasana",
      difficultyLevel: "Intermediate",
      exerciseDuration: 7,
      imagePath: AppImages.bannerFooterImage02
    ),
    ExerciseEntity(
      exerciseTitle: "Padmasana",
      difficultyLevel: "Advance",
      exerciseDuration: 7,
      imagePath: AppImages.bannerBgImage,
    ),
  ];
}
