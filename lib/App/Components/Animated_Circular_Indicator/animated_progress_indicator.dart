import 'package:flutter/material.dart';

import '../../Constants/app_colors.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double? percentage;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0,
              end: percentage,
            ),
            duration: defaultDuration,
            builder: (BuildContext context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text("${(value * 100).toInt()}%",
                      style: Theme.of(context).textTheme.subtitle1),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label ?? "label",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

class AnimatedLinearProgessIndicator extends StatelessWidget {
  const AnimatedLinearProgessIndicator({
    Key? key,
    @required this.percentage,
    @required this.label,
  }) : super(key: key);

  final double? percentage;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
          tween: Tween<double>(
            begin: 0,
            end: percentage,
          ),
          duration: defaultDuration,
          builder: (BuildContext context, double value, child) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label ?? "label",
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text("${(value * 100).toInt()}%"),
                ],
              ),
              const SizedBox(height: defaultPadding / 2),
              LinearProgressIndicator(
                value: value,
                color: primaryColor,
                backgroundColor: darkColor,
              ),
            ],
          )),
    );
  }
}
