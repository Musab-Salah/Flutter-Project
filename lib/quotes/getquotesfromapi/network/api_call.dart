import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/quote.dart';

Future fetchAllQuotes() async {
  final response = await http.get(Uri.parse('https://type.fit/api/quotes'));
  if (response.statusCode == 200) {
    var jsonData = jsonDecode(response.body);
    print(jsonData);

    var quotes = [];
    for (var aQuote in jsonData) {
      Quote quote =
          Quote(text: aQuote['text'], author: aQuote['author'] ?? "unknown");

      quotes.add(quote);
    }
    print(quotes.length);
    return quotes;
  } else {
    throw Exception('Failed to fetch posts');
  }
}
