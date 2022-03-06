// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QuoteViewModel on _QuoteViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_QuoteViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$quotesListAtom = Atom(name: '_QuoteViewModelBase.quotesList');

  @override
  List<QuoteModel>? get quotesList {
    _$quotesListAtom.reportRead();
    return super.quotesList;
  }

  @override
  set quotesList(List<QuoteModel>? value) {
    _$quotesListAtom.reportWrite(value, super.quotesList, () {
      super.quotesList = value;
    });
  }

  final _$getQuotesAsyncAction = AsyncAction('_QuoteViewModelBase.getQuotes');

  @override
  Future<List<QuoteModel>?> getQuotes() {
    return _$getQuotesAsyncAction.run(() => super.getQuotes());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
quotesList: ${quotesList}
    ''';
  }
}
