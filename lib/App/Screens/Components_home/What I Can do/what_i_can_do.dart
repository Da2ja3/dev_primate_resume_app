import 'package:dev_primate_resume_app/App/Screens/Components_home/What%20I%20Can%20do/what_i_can_do_card.dart';
import 'package:flutter/material.dart';

import '../../../Constants/app_colors.dart';
import '../../../Models/what_i_can_do_model.dart';

class WhatIcanDo extends StatelessWidget {
  const WhatIcanDo({
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
            "What I can do for the company",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(demoWhatIcanDoModel.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: WhatIcanDoCard(
                    whatIcanDoModel: demoWhatIcanDoModel[index],
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
