import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_pane/controller/menu_controller.dart';
import 'package:responsive_pane/reponsive.dart';
import 'package:responsive_pane/screens/dashboard/widget/dashboard_header/widget/profile_card.dart';
import 'package:responsive_pane/screens/dashboard/widget/dashboard_header/widget/search_field.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
              onPressed: () {
                Provider.of<MenuController>(context, listen: false)
                    .controlMenu();
              },
              icon: const Icon(Icons.menu)),
        if (!Responsive.isMobile(context)) ...[
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headline6,
          ),
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        ],
        const Expanded(
          child: SearchField(),
        ),
        const ProfileCard()
      ],
    );
  }
}
