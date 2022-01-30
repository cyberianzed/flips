import 'package:abibas/constants.dart';
import 'package:abibas/widgets/progres_card.dart';
import 'package:abibas/widgets/scroll_container.dart';
import 'package:abibas/widgets/upgrade_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: use_full_hex_values_for_flutter_colors
      backgroundColor: Color(0xfff0fedb),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text("Hey Jose!", style: kHeadingextStyle),
                Image.asset("assets/images/user.png"),
              ],
            ),
          ),
          const Text("     14🔥", style: kSubfiretStyle),
          //Continue
          progresCard(),
          UpgradeCard(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Explore subjects", style: kTitleTextStyle),
                Text(
                  "View All",
                  style: kSubtitleTextSyule.copyWith(
                    color: const Color(0xff00a075),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 190,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagenames.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ScrollBox(
                    imagename: imagenames[index],
                    subjectname: subjectnames[index],
                    flipsname: flipnames[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

final List imagenames = [
  "assets/images/chem.png",
  "assets/images/biology.png",
  "assets/images/business.png",
  "assets/images/business.png"
];

final List subjectnames = [
  "Chemistry",
  "Biology",
  "Physics",
  "Maths",
];

final List flipnames = ["   23/24", "  34/40", "  13/20", "  22/35"];
