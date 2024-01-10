// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  final TextEditingController searchController;

  CustomSearchDelegate({required this.searchController});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('Arama Sonuçları: $query');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Burada arama önerilerini oluşturabilirsiniz
    return Text('Arama Önerileri: $query');
  }
}
