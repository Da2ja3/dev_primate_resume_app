import 'package:flutter/material.dart';

import '../../../Constants/app_colors.dart';
import '../../../Responsive/responsive_class.dart';
import '../Animation_counter/animated_counter.dart';
import 'highlight.dart';


class HeighLightInfo extends StatelessWidget {
  const HeighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: defaultPadding / 2, horizontal: 5),
      child: Responsive.isMobileLarge(context)
          ? Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeighLight(
                counter: AnimatedCounter(
                  value: 1,
                  text: "K+",
                ),
                label: "LinkedIn followers",
              ),
              // HeighLight(
              //   counter: AnimatedCounter(
              //     value: 52,
              //     text: "+",
              //   ),
              //   label: "Videos",
              // ),
            ],
          ),
          SizedBox(height: defaultPadding / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeighLight(
                counter: AnimatedCounter(
                  value: 5,
                  text: "+",
                ),
                label: "Github Projects",
              ),
              // HeighLight(
              //   counter: AnimatedCounter(
              //     value: 10,
              //     text: "K+",
              //   ),
              //   label: "Stars",
              // ),
            ],
          )
        ],
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter(
              value: 1000,
              text: "K+",
            ),
            label: "LinkedIn Followers",
          ),
          // HeighLight(
          //   counter: AnimatedCounter(
          //     value: 52,
          //     text: "+",
          //   ),
          //   label: "Videos",
          // ),
          HeighLight(
            counter: AnimatedCounter(
              value: 5,
              text: "+",
            ),
            label: "Github Projects",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 10,
              text: "K+",
            ),
            label: "Stars",
          ),
        ],
      ),
    );
  }
}
