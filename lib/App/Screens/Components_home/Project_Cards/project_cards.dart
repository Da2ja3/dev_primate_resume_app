import 'package:flutter/material.dart';

import '../../../Constants/app_colors.dart';
import '../../../Models/projects_done_model.dart';
import '../../../Responsive/responsive_class.dart';

class ProjectCards extends StatelessWidget {
  const ProjectCards({
    Key? key,
    this.projectModel,
  }) : super(key: key);

  final ProjectModel? projectModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${projectModel!.title}",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            "${projectModel!.description}",
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
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
