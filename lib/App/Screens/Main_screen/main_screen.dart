import 'package:flutter/material.dart';


import '../../Constants/app_colors.dart';
import '../../Responsive/responsive_class.dart';
import '../Side_menu/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
          backgroundColor: bgColor,
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          })),
      drawer: SideMenu(),
      body: Container(
        decoration: const BoxDecoration(),
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))

            ///Side Menu
              const Expanded(
                flex: 2,
                child: SideMenu(),
              ),
            SizedBox(width: defaultPadding / 3),
            Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
