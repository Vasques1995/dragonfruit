import 'package:dragonfruit/modules/home/store/home_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeController {
  HomeStore homeStore = Modular.get<HomeStore>();
  PageController pageController = PageController();

  goToPage(int pageIndex) {
    pageController.jumpToPage(pageIndex);
    homeStore.setActivePage(pageIndex);
  }
}
