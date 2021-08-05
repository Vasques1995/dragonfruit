import 'package:dragonfruit/modules/bookshelf/controller/bookshelf_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BookshelfPage extends StatefulWidget {
  BookshelfPage({Key? key}) : super(key: key);

  @override
  _BookshelfPageState createState() => _BookshelfPageState();
}

class _BookshelfPageState
    extends ModularState<BookshelfPage, BookshelfController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: controller.inc,
      ),
      body: Container(
        color: Colors.pink,
        child: Center(
          child: Observer(
            builder: (BuildContext context) {
              return Text(
                  'Valor do counter: ${controller.bookshelfStore.activePageIndex}');
            },
          ),
        ),
      ),
    );
  }
}
