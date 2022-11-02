import 'package:flutter/material.dart';
import 'package:responsive_pane/constants.dart';
import 'package:responsive_pane/reponsive.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding * 0.5),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          const Image(
            image: AssetImage("assets/images/profile_pic.png"),
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding * 0.5),
              child: Text("Austin"),
            ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
