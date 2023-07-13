import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayaa_shop/view/bottom_bar_screen/cart_screen.dart';
import 'package:hayaa_shop/view/bottom_bar_screen/home_screen.dart';
import 'package:hayaa_shop/view/bottom_bar_screen/favarite_screen.dart';
import 'package:hayaa_shop/view/bottom_bar_screen/profile_screen.dart';
import 'package:hayaa_shop/view/widget/bn_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

int _currentIndex = 0;
List<BnScreen> _bnscreen = <BnScreen>[
  BnScreen(title: '', widget: HomeScreen()),
  BnScreen(title: '', widget: CartPage(cart)),
  BnScreen(title: '', widget: FavaritePage(favarite)),
  BnScreen(title: '', widget: ProfileScreen()),
];
Cart cart = Get.put(Cart());
Favarite favarite = Get.put(Favarite());

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(

        padding: const EdgeInsetsDirectional.only(bottom: 5,start: 20,end: 20),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(40),
          ),
          child: BottomNavigationBar(
            elevation: 5,
            iconSize: 30,
            onTap: (int selectedItemIndex) {

              setState(() {
                _currentIndex = selectedItemIndex;
              });
            },
            currentIndex: _currentIndex,

            items: [
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF7BCFE9),
                icon: Icon(Icons.home),
                label: '',
                activeIcon: Icon(
                  Icons.home,
                  color: Color(0xFF126881),
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF7BCFE9),
                icon: Icon(Icons.shopping_cart_rounded),
                label: '',
                activeIcon: Icon(
                  Icons.shopping_cart_rounded,
                  color: Color(0xFF126881),
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF7BCFE9),
                icon: Icon(Icons.favorite),
                label: '',
                activeIcon: Icon(
                  Icons.favorite,
                  color: Color(0xFF126881),
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF7BCFE9),
                icon: Icon(Icons.circle),
                label: '',
                activeIcon: Icon(
                  Icons.circle,
                  color: Color(0xFF126881),
                ),
              ),
            ],
          ),
        ),
      ),
      body: _bnscreen[_currentIndex].widget,
    );
  }
}
