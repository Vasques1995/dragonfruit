import 'package:dragonfruit/modules/bookshelf/controller/bookshelf_controller.dart';
import 'package:dragonfruit/modules/bookshelf/page/bookshelf_page.dart';
import 'package:dragonfruit/modules/bookshelf/store/bookshelf_store.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BookshelfModule extends WidgetModule {
  @override
  final List<Bind> binds = [
    Bind((i) => BookshelfController()),
    Bind((i) => BookshelfStore()),
  ];

  static Inject get to => Inject<BookshelfModule>();

  @override
  Widget get view => BookshelfPage();
}
