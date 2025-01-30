import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:provider/provider.dart';
import 'package:untitled27/model/product_model.dart';

class CardProvider extends ChangeNotifier {
  final List<Product> _card = [];
  List<Product> get cart => _card;


  void toggleFavorites(Product product ){
    if(_card.contains(product)){
      for(Product elemenet in _card){
        elemenet.quantity++ ;
      }
    }else {
      _card.add(product);
    }notifyListeners();
  }
  static CardProvider of(
      BuildContext context,{
    bool listen = true ,

  }) {
    return  Provider.of<CardProvider> (context,listen: listen);
  }

}