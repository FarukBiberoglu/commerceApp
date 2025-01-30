import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:untitled27/constant.dart';
import 'package:untitled27/model/product_model.dart';

class ItemDetailPage extends StatelessWidget {
  final Product product ;
  const ItemDetailPage({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.title,style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 25,
        ),),
        SizedBox(height: 10,),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\n${product.price}',style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      width:120,
                      height: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kprimaryColor,
                      ),
                      alignment: Alignment.center,padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Icon(Icons.star,size: 14,color: Colors.white,),
                          SizedBox(width: 2,),
                          Text(product.title.toString(),style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 13,
                          ),),

                        ],
                      ),

                    ),
                    SizedBox(width: 5,),Text(product.review.toString(),style: TextStyle(
                      color: Colors.grey
                    ),)
                  ],
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
