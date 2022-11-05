import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../Components/Area-Info/area_info.dart';
import '../../Components/Coding/coding_skills.dart';
import '../../Components/Knowledge/knowledge.dart';
import '../../Components/My_info/personal_info.dart';
import '../../Components/Skills/skills.dart';
import '../../Constants/app_colors.dart';
import '../../Responsive/responsive_class.dart';
import '../Components_home/Footer/footer.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ///My Info
            const MyInfo(),

            ///Area Info
            Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    children: [
                      const AreaInfoText(
                        title: "Residence",
                        text: "Nigeria",
                      ),
                      const AreaInfoText(
                        title: "City",
                        text: "Lagos",
                      ),


                      ///Skills
                      const Skills(),
                      const SizedBox(height: defaultPadding),

                      ///Coding %
                      const Coding(),

                      ///Knowledge about coding/languages
                      const Knowledges(),

                      ///Divider
                      const Divider(),
                      SizedBox(height: defaultPadding / 2),

                      ///Bottom
                      TextButton(
                        onPressed: () {
                          showMessage("This feature will be added soon");
                        },
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text("DOWNLOAD CV",
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color)),
                              const SizedBox(
                                width: defaultPadding / 2,
                              ),
                              SvgPicture.asset("assets/icons/download.svg"),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        color: Color(0xff24242E),
                        margin: EdgeInsets.only(top: defaultPadding),
                        child: Row(
                          children: [
                            Spacer(),
                            IconButton(
                              onPressed: _launchLinkedIn,
                              icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                            ),
                            IconButton(
                              onPressed: _launchGithub,
                              icon: SvgPicture.asset("assets/icons/github.svg"),
                            ),
                            IconButton(
                              onPressed: _launchTwitter,
                              icon: SvgPicture.asset("assets/icons/twitter.svg"),
                            ),

                            Spacer(),
                          ],
                        ),
                      ),

                      Responsive.isMobile(context) ? Footer() : SizedBox()
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void _launchLinkedIn() async {
    String profileURL = "https://www.linkedin.com/in/adedeji-adekunle-689790ab/";
    await launchUrl(Uri.parse(profileURL));
  }

  void _launchGithub() async {
    String profileURL = "https://github.com/da2ja3";
    await launchUrl(Uri.parse(profileURL));
  }

  void _launchTwitter() async {
    String profileURL = "https://twitter.com/chrixprime";
    await launchUrl(Uri.parse(profileURL));
  }
}
