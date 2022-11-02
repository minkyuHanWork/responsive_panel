import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_pane/controller/menu_controller.dart';
import 'package:responsive_pane/screens/dashboard/dashboard.dart';
import 'package:responsive_pane/screens/widget/side_menu.dart';
import 'package:responsive_pane/reponsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Provider.of<MenuController>(context, listen: false).scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            const Expanded(
              child: SideMenu(),
            ),
          const Expanded(flex: 5, child: Dashboard())
        ],
      )),
    );
  }
}
