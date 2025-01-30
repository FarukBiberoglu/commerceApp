import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:untitled27/model/category_model.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(
                      categories[index].image
                    )),
                  ),
                ),
                SizedBox(height: 5,),
                Text(categories[index].title,style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black

                ),)
              ],
            );
          },
          itemCount: categories.length,
      separatorBuilder: (context, index) {
        return VerticalDivider();
      },),
    );
  }
}
