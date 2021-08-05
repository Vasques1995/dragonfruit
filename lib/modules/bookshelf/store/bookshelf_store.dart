import 'package:mobx/mobx.dart';

part 'bookshelf_store.g.dart';

class BookshelfStore = _BookshelfStoreBase with _$BookshelfStore;

abstract class _BookshelfStoreBase with Store {
  @observable
  int activePageIndex = 0;

  @action
  setActivePage(int newValue) {
    this.activePageIndex = newValue;
  }
}
