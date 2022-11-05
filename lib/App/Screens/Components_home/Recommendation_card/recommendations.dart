import 'package:dev_primate_resume_app/App/Screens/Components_home/Recommendation_card/recommendation_card.dart';
import 'package:flutter/material.dart';

import '../../../Constants/app_colors.dart';
import '../../../Models/recommendation_model.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(demoRecommendationModel.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationCards(
                    recommendationModel: demoRecommendationModel[index],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
