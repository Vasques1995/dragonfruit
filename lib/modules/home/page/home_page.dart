import 'dart:math';

import 'package:dragonfruit/core/component/work_in_progress_widget.dart';
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
        children: [
          Container(
            color: Colors.purple,
          ),
          //TODO Make a better looking work in progress page
          Container(
            color: Colors.pink,
            child: Center(
                child: WorkInProgressWidget(
              message: 'Trabalho em progresso, talvez na próxima versão',
            )),
          ),
          Container(
            color: Colors.teal,
            child: Center(
                child: WorkInProgressWidget(
              message: 'Trabalho em progresso, talvez na próxima versão',
            )),
          ),
        ],
      )),
    );
  }
}
