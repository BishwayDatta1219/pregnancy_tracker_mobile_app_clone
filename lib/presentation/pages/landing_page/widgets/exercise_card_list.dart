import 'package:flutter/material.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/database/app_database.dart';
import 'package:pregnancy_tracker_mobile_app_clone/presentation/pages/landing_page/widgets/exercise_card_view.dart';


class ExerciseCardList extends StatelessWidget {
  final exerciseList = AppDatabase.exerciseList;
  ExerciseCardList({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: exerciseList.length,
        itemBuilder: (context, index) {
          var exercise = exerciseList[index];
          return Container(
            margin: EdgeInsets.only(top: index == 0 ? 8 : 0),
            padding: const EdgeInsets.only(
              bottom: 16.0,
              left: 16,
              right: 16,
              top: 16,
            ),
            child: ExerciseCardView(exerciseEntity: exercise,),
          );
        },
      ),
    );
  }
}
