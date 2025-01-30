import 'package:flutter/cupertino.dart';

import '../model/product_model.dart';

class MyImageSlider extends StatelessWidget {

final Function(int) onChange;
  String image  ;
   MyImageSlider({super.key,required this.onChange,required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        onPageChanged: onChange,
        itemBuilder: (context, index) {
          return Image.asset(image);

        },
      ),

    );
  }
}
