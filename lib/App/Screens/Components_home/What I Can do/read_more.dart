import 'package:flutter/material.dart';

import '../../../Constants/app_colors.dart';


class ReadMore extends StatefulWidget {
  const ReadMore({Key? key}) : super(key: key);

  @override
  State<ReadMore> createState() => _ReadMoreState();
}

class _ReadMoreState extends State<ReadMore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Text(
              "\nWhile working as a Mobile developer, "

                  "\nthere was a time that I needed to develop an app for a client. "
                  "\nIt was my job to understand the specifications of the app. "
                  "\nEven though what they wanted seemed impossible with limited time. "
                  "\nI ended up developing a simple and beautiful app "
                  "\nby also beating the deadline by a whole week. "
                  "\nAlthough I was nervous to submit the app, "
                  "\nI went with my gut and moved forward anyway. "
                  "\nThe client ended up loving it and said they didn’t believe such a beautiful app can be built"
                  "\n within such a short time. If I were to get the opportunity to work for your company, "
                  "\nI would continue to push the limits and think outside and"
                  "\n inside the box with better ways to solve any challenge I face. "
                  "\nBy combining my technical skills and my innovative and creative thinking, "
                  "\nI know I will be able to deliver to time any work committed to my hands "),
        ),
      ),
    );
  }
}
