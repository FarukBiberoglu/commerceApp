import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled27/provider/card_provider.dart';
import 'package:untitled27/screens/Cart/cart_screen.dart';
import 'package:untitled27/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CardProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen( ),
      ),
    );
  }
}
