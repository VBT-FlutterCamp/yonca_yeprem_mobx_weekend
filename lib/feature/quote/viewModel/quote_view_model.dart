import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../../core/base/base_view_model.dart';
import '../model/quote_model.dart';
import '../service/quote_service.dart';
part 'quote_view_model.g.dart';

class QuoteViewModel = _QuoteViewModelBase with _$QuoteViewModel;

abstract class _QuoteViewModelBase with Store,BaseViewModel {

  late IQuoteService quoteService;

  @override
  void setContext(BuildContext context) => this.context = context;
  
  @override
  void init() {
    quoteService = DioQuoteService(networkManager);
    getQuotes();
  }

  @observable
  bool isLoading = true;

  void changeLoading() {
    isLoading = !isLoading;
  }

  @observable
  List<QuoteModel>? quotesList;
  
  @action
  Future<List<QuoteModel>?> getQuotes() async{
    changeLoading();
    quotesList = await quoteService.getQuotes();
    changeLoading();
  }
  
}