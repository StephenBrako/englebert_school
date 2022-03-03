import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:fsa/contactpage/book.dart';
import 'package:http/http.dart' as http;

class BooksApi {
  static Future<List<Book>> getBooks(String query) async {
    final url = Uri.parse(
        'https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/FIRST%20STAR%20ACADEMY%2Ffsa_teachers.json?alt=media');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List books = json.decode(response.body);

      return books.map((json) => Book.fromJson(json)).where((book) {
        final NameLower = book.Name.toLowerCase();
        final callnumberLower = book.callnumber;
        final searchLower = query.toLowerCase();

        return NameLower.contains(searchLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
