import 'package:flutter/material.dart';
import 'package:untitled27/constant.dart';
import 'package:untitled27/model/product_model.dart';
import 'package:untitled27/screens/home/widget/categories.dart';
import 'package:untitled27/screens/home/widget/custom_appbar.dart';
import 'package:untitled27/screens/home/widget/image_slider.dart';
import 'package:untitled27/screens/home/widget/product_card.dart';
import 'package:untitled27/screens/home/widget/search_bar.dart';
import 'package:untitled27/screens/nav_bar_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              customAppBar(),
              SizedBox(
                height: 20,
              ),
              MySearchBar(),
              SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 200,
                child: ImageSlider(
                  currentSlide: currentSlider,
                  onChange: (value) {
                    setState(() {
                      currentSlider = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Categories(

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special For You',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount
                    (crossAxisCount: 2,
                    childAspectRatio: 0.78,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                      return ProductCard(product: products[index]);
                  },)
            ],
          ),
        ),
      ),
    );
  }
}
