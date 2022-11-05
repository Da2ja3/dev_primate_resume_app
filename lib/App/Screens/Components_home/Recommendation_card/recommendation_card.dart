import 'package:flutter/material.dart';

import '../../../Constants/app_colors.dart';
import '../../../Models/recommendation_model.dart';
import '../../../Responsive/responsive_class.dart';

class RecommendationCards extends StatelessWidget {
  const RecommendationCards({
    Key? key,
    required this.recommendationModel,
  }) : super(key: key);

  final RecommendationModel recommendationModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isDesktop(context) ? 250 : 250,
      width: Responsive.isDesktop(context) ? 400 : 300,
      color: secondaryColor,
      padding: EdgeInsets.all(defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendationModel.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(recommendationModel.source!),
          SizedBox(height: defaultPadding),
          Text(
            recommendationModel.text!,
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
