import 'package:dragonfruit/modules/home/controller/home_controller.dart';
import 'package:dragonfruit/modules/home/store/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'page/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => HomeController()),
    Bind((i) => HomeStore()),
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const HomePage()),
      ];
}
