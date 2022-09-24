import 'package:adv_cupertino_app/screens/productPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CartPage.dart';
import 'SearchPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> tabs = [
    const ProductPage(),
    const SearchPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: 'Products',
              ),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.cart), label: 'Cart')
            ],
          ),
          tabBuilder: (BuildContext context, int i) {
            return CupertinoTabView(
              builder: (context) {
                return tabs[i];
              },
            );
          },
        ),
      ),
    );
  }
}
