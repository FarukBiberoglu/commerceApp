import 'package:flutter/material.dart';
import 'package:untitled27/constant.dart';
import 'package:untitled27/screens/Cart/cart_screen.dart';
import 'package:untitled27/screens/home/favorite_screen.dart';
import 'package:untitled27/screens/home/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 2; // Başlangıçta HomeScreen açık olacak
  final List<Widget> screens = [
    Scaffold(), // Kategori Sayfası (Eğer varsa buraya ekle)
    Favorite(),
    HomeScreen(),
    CartScreen(),
    Scaffold(), // Profil Sayfası (Eğer varsa buraya ekle)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex], // Seçilen sayfa burada görüntülenir
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2; // Home tuşuna basınca ana ekrana dön
          });
        },
        shape: const CircleBorder(),
        backgroundColor: kprimaryColor,
        child: const Icon(Icons.home, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8, // Daha iyi görünüm için margin azaltıldı
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => setState(() => currentIndex = 0),
              icon: Icon(
                Icons.grid_view_outlined,
                size: 30,
                color: currentIndex == 0 ? kprimaryColor : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () => setState(() => currentIndex = 1),
              icon: Icon(
                Icons.favorite_border,
                size: 30,
                color: currentIndex == 1 ? kprimaryColor : Colors.grey,
              ),
            ),
            const SizedBox(width: 40), // Home butonu için boşluk bırakıldı
            IconButton(
              onPressed: () => setState(() => currentIndex = 3),
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: currentIndex == 3 ? kprimaryColor : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () => setState(() => currentIndex = 4),
              icon: Icon(
                Icons.person,
                size: 30,
                color: currentIndex == 4 ? kprimaryColor : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
