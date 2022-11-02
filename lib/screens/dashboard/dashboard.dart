import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_pane/constants.dart';
import 'package:responsive_pane/model/recent_file.dart';
import 'package:responsive_pane/reponsive.dart';
import 'package:responsive_pane/screens/dashboard/widget/chart/chart.dart';
import 'package:responsive_pane/screens/dashboard/widget/dashboard_header/dashboard_header.dart';
import 'package:responsive_pane/screens/dashboard/widget/fields/fields.dart';
import 'package:responsive_pane/screens/dashboard/widget/recent_file_info.dart';
import 'package:responsive_pane/screens/dashboard/widget/storage/storage.dart';
import 'package:responsive_pane/screens/dashboard/widget/storage/widget/storage_info_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          const DashboardHeader(),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Fields(),
                    SizedBox(height: defaultPadding),
                    RecentFileInfo()
                  ],
                ),
              ),
              if (!Responsive.isMobile(context)) ...[
                SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child: Storage(),
                ),
              ]
            ],
          )
        ],
      ),
    );
  }
}
