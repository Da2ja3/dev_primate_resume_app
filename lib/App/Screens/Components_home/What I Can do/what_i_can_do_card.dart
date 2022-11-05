import 'package:dev_primate_resume_app/App/Screens/Components_home/What%20I%20Can%20do/read_more.dart';
import 'package:flutter/material.dart';

import '../../../Constants/app_colors.dart';
import '../../../Models/what_i_can_do_model.dart';
import '../../../Responsive/responsive_class.dart';

class WhatIcanDoCard extends StatelessWidget {
  const WhatIcanDoCard({
    Key? key,
    required  this.whatIcanDoModel,
  }) : super(key: key);

  final WhatIcanDoModel whatIcanDoModel;

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
            whatIcanDoModel.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          // Text(WhatIcanDoModel.source!),
          SizedBox(height: defaultPadding),
          Text(
            whatIcanDoModel.text!,
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ReadMore()));
            },
            child: Text(
              "Read more >>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
