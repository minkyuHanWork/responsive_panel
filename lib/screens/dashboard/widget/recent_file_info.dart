import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_pane/constants.dart';
import 'package:responsive_pane/model/recent_file.dart';

class RecentFileInfo extends StatelessWidget {
  const RecentFileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Files',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
                columnSpacing: defaultPadding,
                horizontalMargin: 0,
                columns: [
                  DataColumn(label: Text("File Name")),
                  DataColumn(label: Text("Data")),
                  DataColumn(label: Text("Size"))
                ],
                rows: List.generate(
                    demoRecentFiles.length,
                    (index) => DataRow(
                          cells: [
                            DataCell(Row(
                              children: [
                                SvgPicture.asset(
                                  demoRecentFiles[index].icon!,
                                  height: 30,
                                  width: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding),
                                  child: Text(demoRecentFiles[index].title!),
                                )
                              ],
                            )),
                            DataCell(Text(demoRecentFiles[index].date!)),
                            DataCell(Text(demoRecentFiles[index].size!)),
                          ],
                        ))),
          )
        ],
      ),
    );
  }
}
