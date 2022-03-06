
import 'dart:convert';

List<QuoteModel> quoteModelFromJson(String str) => List<QuoteModel>.from(json.decode(str).map((x) => QuoteModel.fromJson(x)));

class QuoteModel {
  String? text;
  String? author;

  QuoteModel({this.text, this.author});

  QuoteModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['text'] = this.text;
    data['author'] = this.author;
    return data;
  }

}