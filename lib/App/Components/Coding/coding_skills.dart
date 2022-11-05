import 'package:flutter/material.dart';
import '../../Constants/app_colors.dart';
import '../Animated_Circular_Indicator/animated_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Text(
          "Abilities",
          style: Theme.of(context).textTheme.subtitle2,
        ),
        SizedBox(height: defaultPadding / 2),
        AnimatedLinearProgessIndicator(
          label: "Flutter",
          percentage: 0.8,
        ),
        AnimatedLinearProgessIndicator(
          label: "Dart",
          percentage: 0.7,
        ),
        AnimatedLinearProgessIndicator(
          label: "C/C++",
          percentage: 0.5,
        ),
        AnimatedLinearProgessIndicator(
          label: "MySQL",
          percentage: 0.5,
        ),
      ],
    );
  }
}
