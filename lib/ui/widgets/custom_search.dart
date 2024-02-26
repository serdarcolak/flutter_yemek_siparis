import 'package:flutter/material.dart';

class CustomSearch extends SearchDelegate {
  List<String> allData = ['Baklava', 'Kek', 'Meyve Suyu'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
        query = '';
      }, icon: Icon(Icons.clear),)
    ];
  }
  @override
  IconButton buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: (){
          close(context, null);
        }
    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuary = [];
    for (var item in allData){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuary.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuary.length,
        itemBuilder: (context, index) {
          var result = matchQuary[index];
          return ListTile(
            title: Text(result),
          );
        }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuary = [];
    for (var item in allData){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuary.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuary.length,
        itemBuilder: (context, index) {
          var result = matchQuary[index];
          return ListTile(
            title: Text(result),
          );
        }
    );
  }
}