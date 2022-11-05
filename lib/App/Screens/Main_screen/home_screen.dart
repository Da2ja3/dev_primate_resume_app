import 'package:flutter/material.dart';

import '../../Responsive/responsive_class.dart';
import '../Components_Home/What I Can DO/what_I_can_do.dart';
import '../Components_home/Footer/footer.dart';
import '../Components_home/Highlight/highlight_info.dart';
import '../Components_home/Project_Cards/my_project_card.dart';
import '../Components_home/Recommendation_card/recommendations.dart';
import '../Home_banner/home_banner.dart';
import 'main_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        ///HomeScreen Banner
        HomeScreenBanner(),

        ///Heigh Lght info
        HeighLightInfo(),

        ///Project Cards
        MyProjectsCards(),

        ///What I Can Do For The Company
        WhatIcanDo(),

        ///Recommendations
        Recommendations(),

        ///Footer, We will Use only for Web
        Responsive.isMobile(context) ? SizedBox() : Footer()
      ],
    );
  }
}
