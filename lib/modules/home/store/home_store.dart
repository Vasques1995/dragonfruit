import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  int counter = 0;

  @action
  setCounter(int newValue) {
    this.counter = newValue;
  }
}
