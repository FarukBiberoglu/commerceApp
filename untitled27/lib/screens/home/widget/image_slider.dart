import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider(
      {super.key, required this.currentSlide, required this.onChange});

  final Function(int) onChange;
  final int currentSlide;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: PageView(
                scrollDirection: Axis.horizontal,
                allowImplicitScrolling: true,
                onPageChanged: onChange,
                physics: ClampingScrollPhysics(),
                children: [
                  Image.asset(
                    'assets/cyber-monday-shopping-sales.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/freepik__the-style-is-candid-image-photography-with-natural__30018.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/freepik__the-style-is-candid-image-photography-with-natural__30022.jpg',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned.fill(
            bottom: 10,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      5,
                      (index) => AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            width: currentSlide == index ?15 : 0,
                            height: 8,
                            margin: EdgeInsets.only(right: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: currentSlide == index
                                    ? Colors.black
                                    : Colors.transparent,
                                border: Border.all(
                                  color: Colors.black,
                                )),
                          ))),
            ))
      ],
    );
  }
}
