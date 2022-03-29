import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';

List<Widget> names = [
  FlipCard(
    front: CarouselContainer(
      isTitle: true,
      cardtext: "What is the significance of the ozone layer?",
    ),
    back: CarouselContainer(
      isTitle: false,
      cardtext:
          "Ozone protects the Earth from harmful ultraviolet (UV) rays from the Sun.\n\nWithout the Ozone layer in the atmosphere, life on Earth would be very difficult.\n",
    ),
  ),
  // FlipCard(
  //   front: CarouselContainer(
  //     isTitle: true,
  //     cardtext: "Hello J K",
  //   ),
  //   back: CarouselContainer(
  //     isTitle: false,
  //     cardtext:
  //         "Indeed",
  //   ),
  // ),
  FlipCard(
    front: CarouselContainer(
      isTitle: true,
      cardtext: "What is the significance of the ozone layer?",
    ),
    back: CarouselContainer(
      isTitle: false,
      cardtext:
          "Ozone protects the Earth from harmful ultraviolet (UV) rays from the Sun.\n\nWithout the Ozone layer in the atmosphere, life on Earth would be very difficult.\n",
    ),
  ),
  FlipCard(
    front: CarouselContainer(
      isTitle: true,
      cardtext: "What is the significance of the ozone layer?",
    ),
    back: CarouselContainer(
      isTitle: false,
      cardtext:
          "Ozone protects the Earth from harmful ultraviolet (UV) rays from the Sun.\n\nWithout the Ozone layer in the atmosphere, life on Earth would be very difficult.\n",
    ),
  ),
];

class CarouselContainer extends StatelessWidget {
  final String cardtext;
  final bool isTitle;
  final TextToSpeech tts = TextToSpeech();

  CarouselContainer({
    Key? key,
    required this.cardtext,
    required this.isTitle,
  }) : super(key: key);

  void speak(String text) {
    tts.setVolume(1.0);
    tts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    cardtext,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: isTitle ? 30 : 18,
                      height: 1.2,
                      fontWeight: isTitle ? FontWeight.w500 : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          tts.setVolume(1.0);
                          tts.setPitch(.9);
                          tts.speak(cardtext);
                        },
                        icon: const Icon(Icons.headphones_outlined),
                      ),
                      const Icon(Icons.refresh_outlined)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ));
  }
}
