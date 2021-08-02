import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:grocery/Cart/Cart.dart';
import 'package:grocery/HomePage/home.dart';
import 'package:grocery/colors/Colors.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({Key? key}) : super(key: key);

  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(
              child: Home(),
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              child: Cart(),
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 70.0,
        items: <Widget>[
          GestureDetector(
            onTap: () {
              print(_currentIndex.toString());
            },
            child: Container(
              child: Icon(Icons.home, size: 30),
            ),
          ),
          Icon(
            Icons.reorder,
            size: 20,
          ),
          Icon(Icons.shopping_cart, size: 20),
          Icon(Icons.local_offer, size: 20),
          Icon(Icons.person, size: 20),
        ],
        color: Colors.white,
        buttonBackgroundColor: ColorConstants.gold,
        backgroundColor: ColorConstants.darkblue,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
