import 'dart:convert';

import 'package:flutter/services.dart';

class MockData {
  static Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/books.json');
    final data = await json.decode(response);
    return data;
  }
}