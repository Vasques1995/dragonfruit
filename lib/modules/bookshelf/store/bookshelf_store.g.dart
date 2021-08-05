// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookshelf_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BookshelfStore on _BookshelfStoreBase, Store {
  final _$activePageIndexAtom =
      Atom(name: '_BookshelfStoreBase.activePageIndex');

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

  final _$sheetSizeAtom = Atom(name: '_BookshelfStoreBase.sheetSize');

  @override
  double get sheetSize {
    _$sheetSizeAtom.reportRead();
    return super.sheetSize;
  }

  @override
  set sheetSize(double value) {
    _$sheetSizeAtom.reportWrite(value, super.sheetSize, () {
      super.sheetSize = value;
    });
  }

  final _$_BookshelfStoreBaseActionController =
      ActionController(name: '_BookshelfStoreBase');

  @override
  dynamic setActivePage(int newValue) {
    final _$actionInfo = _$_BookshelfStoreBaseActionController.startAction(
        name: '_BookshelfStoreBase.setActivePage');
    try {
      return super.setActivePage(newValue);
    } finally {
      _$_BookshelfStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSheetSize(double newSheetSize) {
    final _$actionInfo = _$_BookshelfStoreBaseActionController.startAction(
        name: '_BookshelfStoreBase.setSheetSize');
    try {
      return super.setSheetSize(newSheetSize);
    } finally {
      _$_BookshelfStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
activePageIndex: ${activePageIndex},
sheetSize: ${sheetSize}
    ''';
  }
}
