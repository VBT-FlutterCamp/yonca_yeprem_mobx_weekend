// import 'package:flutter_test/flutter_test.dart';
// import 'package:vexana/vexana.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// import 'package:yonca_yeprem_mobx_weekend/feature/quote/model/quote_model.dart';

// // void main() {
//   INetworkManager? manager;
//   setUp(() {
//     const String baseUrl = 'https://type.fit/api/quotes';
//     // manager = NetworkManager(isEnableLogger: true,options: BaseOptions(baseUrl: baseUrl));
//   manager?.dioIntercaptors.add(PrettyDioLogger());  
//   });
//   test('Quote Test', () async {
//     final response = await manager?.send<QuoteModel, List<QuoteModel>?>('', parseModel: QuoteModel(), method: RequestType.GET);
    
//     expect(response, isNotNull);
//   });
// }