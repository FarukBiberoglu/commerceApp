import 'package:flutter/material.dart';

import '../../../constant.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            style: IconButton.styleFrom(backgroundColor: kcontentColor,padding: EdgeInsets.all(10)),
            onPressed: () {

            }, iconSize: 38,icon: Icon(Icons.add)),
        IconButton(
            style: IconButton.styleFrom(backgroundColor: kcontentColor,padding: EdgeInsets.all(10)),
            onPressed: () {

            },iconSize: 38, icon: Icon(Icons.notification_add)),
      ],
    );
  }
}
