import 'package:abibas/card/card.dart';
import 'package:abibas/constants.dart';
import 'package:flutter/material.dart';

class ScrollBox extends StatelessWidget {
  final String imagename;
  final String subjectname;
  final String flipsname;

  const ScrollBox(
      {Key? key,
      required this.imagename,
      required this.subjectname,
      required this.flipsname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      height: 190,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Color(0x04000000),
              blurRadius: 10,
              spreadRadius: 10,
              offset: Offset(0.0, 8.0)),
        ],
        image: DecorationImage(
          image: AssetImage(imagename),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 8, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const CardWidget()));
              },
              child: Text(
                subjectname,
                style: kTitleTextStyle,
              ),
            ),
            // Text(
            //   subjectname,
            //   style: kTitleTextStyle,
            // ),
            Text(
              flipsname + ' flips',
              style: TextStyle(
                color: kTextColor.withOpacity(.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
