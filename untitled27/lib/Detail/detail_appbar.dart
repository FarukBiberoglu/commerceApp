import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

import '../constant.dart';

class DetailAppbar extends StatelessWidget {
  const DetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
    child: Row(
      children: [
        IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.white,padding: EdgeInsets.all(10)),
            onPressed: () {
              Navigator.pop(context);

            }, iconSize: 38,icon: Icon(Icons.arrow_back_ios)),
          Spacer(),
        IconButton(
            style: IconButton.styleFrom(backgroundColor:  Colors.white,padding: EdgeInsets.all(10)),
            onPressed: () {

            }, iconSize: 38,icon: Icon(Icons.share_outlined)),
        SizedBox(width: 10,),
        IconButton(
            style: IconButton.styleFrom(backgroundColor:  Colors.white,padding: EdgeInsets.all(10)),
            onPressed: () {

            }, iconSize: 38,icon: Icon(Icons.favorite_border)),
      ],
    ),
    );
  }
}
