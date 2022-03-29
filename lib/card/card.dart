import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'carousel_container.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe6ffbe),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: .8,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                initialPage: 0,
                autoPlay: false,
              ),
              items: names,
            ),
          ]),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () => Navigator.pushNamed(context, '/feature'),
      //   icon: LineIcon.plus(
      //     size: 30,
      //   ),
      //   label: Text(
      //     'Add Meme',
      //     style: TextStyle(
      //         fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
      //   ),
      // ),
    );
  }
}
