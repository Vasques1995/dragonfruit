import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  int activePageIndex = 0;

  @action
  setActivePage(int newValue) {
    this.activePageIndex = newValue;
  }
}
