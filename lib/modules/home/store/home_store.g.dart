// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$activePageIndexAtom = Atom(name: '_HomeStoreBase.activePageIndex');

  @override
  int get activePageIndex {
    _$activePageIndexAtom.reportRead();
    return super.activePageIndex;
  }

  @override
  set activePageIndex(int value) {
    _$activePageIndexAtom.reportWrite(value, super.activePageIndex, () {
      super.activePageIndex = value;
    });
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  dynamic setActivePage(int newValue) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setActivePage');
    try {
      return super.setActivePage(newValue);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
activePageIndex: ${activePageIndex}
    ''';
  }
}
