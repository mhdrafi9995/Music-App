import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertask/view/home_page.dart';
import 'package:fluttertask/view/search_page.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _navIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            _navIndex = value;
          });
        },
        controller: _pageController,
        children: const [
          HomePage(),
          SearchDetailsPage(),
        ],
      ),
      extendBody: true,
      // BOTTOM NAVIGATIONBAR
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              width: double.maxFinite,
              height: 80,
              decoration: BoxDecoration(
                  color: const Color(0x9D3E3E3E),
                  borderRadius: BorderRadius.circular(24)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _navIndex = 0;
                      });
                      _pageController.animateToPage(
                        0,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    icon: Icon(
                      Icons.home,
                      size: 32,
                      color: _navIndex == 0 ? Colors.white : Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _navIndex = 1;
                      });
                      _pageController.animateToPage(
                        1,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    icon: Icon(
                      Icons.search,
                      size: 32,
                      color: _navIndex == 1 ? Colors.white : Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _navIndex = 2;
                      });
                    },
                    icon: Icon(
                      Icons.music_note,
                      size: 32,
                      color: _navIndex == 2 ? Colors.white : Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _navIndex = 3;
                      });
                    },
                    icon: Icon(
                      Icons.person,
                      size: 32,
                      color: _navIndex == 3 ? Colors.white : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
