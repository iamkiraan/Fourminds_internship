

import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate{

  List<String> searchTerms = [
    'Europe',
    'America',
    "Antratica",
    'Asia',
    'Australia'

  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: (){
            query = '';
          },
          icon: Icon(Icons.clear)
      )

    ];


  }

  @override
  Widget? buildLeading(BuildContext context) {
    return
      IconButton(
          onPressed: (){
            close(context, null);
          },
          icon: Icon(Icons.arrow_back));



  }

  @override
  Widget buildResults(BuildContext context) {

    List<String> matchResult = [];
    for(var result in searchTerms){
      if(result.toLowerCase().contains(query.toLowerCase())){
        matchResult.add(result);
      }
    }
    return ListView.builder(
      itemCount: matchResult.length,
      itemBuilder: (BuildContext context, int index) {
        var finalresult = matchResult[index];
        return ListTile(
          title: Text(finalresult),
        );

      },

    );

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchResult = [];
    for(var result in searchTerms){
      if(result.toLowerCase().contains(query.toLowerCase())){
        matchResult.add(result);
      }
    }
    return ListView.builder(
      itemCount: matchResult.length,
      itemBuilder: (BuildContext context, int index) {
        var finalresult = matchResult[index];
        return ListTile(
          title: Text(finalresult),
        );

      },

    );
  }
  
}