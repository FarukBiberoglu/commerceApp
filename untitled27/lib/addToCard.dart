import 'package:flutter/material.dart';
import 'package:untitled27/constant.dart';
import 'package:untitled27/model/product_model.dart';
import 'package:untitled27/provider/card_provider.dart';
import 'package:untitled27/screens/Cart/cart_screen.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  const AddToCart({super.key, required this.product});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final provider = CardProvider.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.orangeAccent, // Arka plan rengini belirgin hale getirdim
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (currentIndex != 1) {
                          currentIndex--;
                        }
                      });
                    },
                    iconSize: 22,
                    icon: const Icon(Icons.remove, color: Colors.red),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    currentIndex.toString(),
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex++;
                      });
                    },
                    iconSize: 22,
                    icon: const Icon(Icons.add, color: Colors.green),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));

              provider.toggleFavorites(widget.product);
             const snackBar = SnackBar(content: Text('Succes'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }, child: Container(height: 55,decoration: BoxDecoration(
              color: kprimaryColor,
              borderRadius: BorderRadius.circular(50)
            ),
            alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text('Add To Card',style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold
              ),),
            ),
            )
          ],
        ),
      ),
    );
  }
}
