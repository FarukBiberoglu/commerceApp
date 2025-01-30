import 'package:flutter/material.dart%20';
import 'package:untitled27/Detail/%C4%B1tem_detail_page.dart';
import 'package:untitled27/Detail/detail_appbar.dart';
import 'package:untitled27/Detail/image_slider.dart';
import 'package:untitled27/addToCard.dart';
import 'package:untitled27/constant.dart';

import '../model/product_model.dart';

class DetailaPage extends StatefulWidget {
final Product product ;

  const DetailaPage({super.key,required this.product});

  @override
  State<DetailaPage> createState() => _DetailaPageState();
}

class _DetailaPageState extends State<DetailaPage> {

  int currentImages=0;
  @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.all(10),
    child: Scaffold(
      backgroundColor: kcontentColor,
      floatingActionButton: AddToCart(product: widget.product,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DetailAppbar(),
              MyImageSlider(onChange:(index){
                setState(() {
                  currentImages = index;
                });
              } , image: widget.product.image),
              SizedBox(height: 10.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      5,
                          (index) => AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: currentImages == index ?15 : 0,
                        height: 8,
                        margin: EdgeInsets.only(right: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: currentImages == index
                                ? Colors.black
                                : Colors.transparent,
                            border: Border.all(
                              color: Colors.black,
                            )),
                      ))),
              SizedBox(height: 10.0),
              Container(width: double.infinity,decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(40),
                topLeft: Radius.circular(40),

                )
              ),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     ItemDetailPage(product: widget.product)
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    )
    );
  }
}
