
import 'package:dio/dio.dart';
import '../model/quote_model.dart';

abstract class IQuoteService {
  final Dio networkManager;
  IQuoteService(
    this.networkManager,
  );

  Future<List<QuoteModel>?> getQuotes();
}

class DioQuoteService extends IQuoteService {
  DioQuoteService(Dio networkManager) : super(networkManager);

  @override
  Future<List<QuoteModel>?> getQuotes() async {
    final response = await networkManager.get('https://type.fit/api/quotes');
    if(response.statusCode == 200){
      return quoteModelFromJson(response.data);
    }
  }
}
