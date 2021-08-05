import 'package:dragonfruit/modules/bookshelf/store/bookshelf_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BookshelfController {
  BookshelfStore bookshelfStore = Modular.get<BookshelfStore>();

  inc() {
    bookshelfStore.setActivePage(bookshelfStore.activePageIndex + 1);
  }
}
