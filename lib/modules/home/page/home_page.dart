import 'dart:math';

import 'package:dragonfruit/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Observer(
        name: 'BottomNavigationBarObserver',
        builder: (BuildContext context) {
          return BottomNavigationBar(
            currentIndex: controller.homeStore.activePageIndex,
            onTap: controller.goToPage,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book_rounded), label: 'Livros'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Character'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
            ],
          );
        },
      ),
      body: SafeArea(
          child: PageView(
        controller: controller.pageController,
        physics: NeverScrollableScrollPhysics(),
        children: List.generate(
            3,
            (index) => Container(
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  child: Center(child: Text(index.toString())),
                )),
      )),
    );
  }
}
