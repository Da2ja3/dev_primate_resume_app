import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Constants/app_colors.dart';
import '../../../Responsive/responsive_class.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;

    return Container(
      height: Responsive.isMobile(context) ? 120 : 300,
      width: s.width,
      child: Column(
        mainAxisAlignment: Responsive.isMobile(context)
            ? MainAxisAlignment.end
            : MainAxisAlignment.center,
        children: [
          ///FooterIcons
          Responsive.isMobile(context) ? SizedBox() : FooterIcons(),
          SizedBox(height: defaultPadding / 2),

          ///Footer Texts
          Text(
            "Copyright ©2022, All Rights Reserved.",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: Responsive.isMobile(context)
                ? null
                : Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: defaultPadding / 2),

          Text(
            "Developed by Adedeji Adekunle",
            style: Responsive.isMobile(context)
                ? null
                : Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: defaultPadding / 2),
        ],
      ),
    );
  }
}

class FooterIcons extends StatelessWidget {
  const FooterIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      width: Responsive.isDesktop(context) || Responsive.isTablet(context)
          ? 400
          : double.infinity,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: _launchLinkedIn,
              icon: SvgPicture.asset(
                "assets/icons/linkedin.svg",
                height: 30,
              ),
            ),
            IconButton(
              onPressed: _launchGithub,
              icon: SvgPicture.asset(
                "assets/icons/github.svg",
                height: 30,
              ),
            ),
            IconButton(
              onPressed: _launchTwitter,
              icon: SvgPicture.asset(
                "assets/icons/twitter.svg",
                height: 30,
              ),
            ),
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
