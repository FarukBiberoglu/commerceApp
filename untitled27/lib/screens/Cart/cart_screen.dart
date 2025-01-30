import 'package:flutter/material.dart';
import 'package:untitled27/constant.dart';
import 'package:untitled27/provider/card_provider.dart';
import 'package:untitled27/screens/nav_bar_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final provider = CardProvider.of(context);
    final finalList = provider.cart;

    return Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    style: IconButton.styleFrom(backgroundColor: Colors.white,padding: EdgeInsets.all(10)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavBar()));

                    }, iconSize: 38,icon: Icon(Icons.arrow_back_ios)
                ),
                Text('My Card',style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
                Container(

                ),
              ],
            ),
          ),
          Expanded(child: ListView.builder(
            itemCount: finalList.length,
            itemBuilder: (context, index) {
              final cardItem = finalList[index];

              return Stack (
              children: [
                Padding(padding: EdgeInsets.all(15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),

                  ),child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Image.asset(cardItem.image),


                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cardItem.title,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),),
                            SizedBox(height: 5,),
                            Text(cardItem.category,style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),),
                            SizedBox(height: 10,),

                          ],
                        )
                      ],
                    ),

                  ),


                ),

                )
              ],
            );
          },))

        ],
      )
      ),
    );
  }
}
