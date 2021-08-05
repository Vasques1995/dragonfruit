import 'package:dragonfruit/modules/home/store/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeController {
  HomeStore homeStore = Modular.get<HomeStore>();

  incrementCounter() {
    homeStore.setCounter(homeStore.counter + 1);
  }
}
