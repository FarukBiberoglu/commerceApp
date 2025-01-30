import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:untitled27/Detail/detail_page.dart';
import 'package:untitled27/constant.dart';

import '../../../model/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product ;
  const ProductCard({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailaPage(product: product,)));
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kcontentColor,

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: 15,),
                Center(child:
                Image.asset(product.image,width: 130,height: 130,fit: BoxFit.cover,),
                ),
                SizedBox(height: 10,),
                Padding(padding: EdgeInsets.only(left: 10),
                child: Text(product.title,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    Text(
                      '\n${product.price}',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),),
                    Row(
                      children: [
                        ...List.generate(product.colors.length, (index)=>Container(
                          width: 18,
                          height: 18,
                          margin: EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                            color: product.colors[index],
                            shape: BoxShape.circle
                          ),
                        ))
                      ],
                    )
                  ],
                )

              ],
            ),
          ),
          Positioned(child: Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
              color: kprimaryColor,
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(10),

              )),
              child: GestureDetector(onTap: () {

              },child: Icon(Icons.favorite_border,color: Colors.white,size: 22,),),
            ),
          )),
        ],
      ),
    );
  }
}
