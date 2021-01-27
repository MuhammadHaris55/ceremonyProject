import 'package:flutter/material.dart';

class searchBar extends SearchDelegate<String> {
  final cities = [
    'karachi',
    'lahore',
    'sialkot',
    'sahiwal',
    'islamabad',
    'sawad',
    'bahwalpur',
    'multan',
    'muree',
    'kashmir',
    'kpk',
  ];
  final recentCities = [
    'karachi',
    'lahore',
    'sialkot',
    'muree',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    // throw UnimplementedError();

    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    // throw UnimplementedError();

    return IconButton(
      icon: Icon(Icons.arrow_back),
      // icon: AnimatedIcon(
      //   icon: AnimatedIcon.menu_arrow,
      //   progress: transitionAnimation,
      // ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    // throw UnimplementedError();

    // WE CAN DO OPERATION HERE WHEN THE LISTITEM PRESS FROM LIST IN THE buildSuggestions
    // return Center(
    //   child: Container(
    //     height: 100.0,
    //     width: 100.0,
    //     child: Card(
    //       color: Colors.red,
    //       child: Center(
    //         child: Text(query),
    //       ),
    //     ),
    //   ),
    // );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    // throw UnimplementedError();

    final suggestionList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        // FUNCTION BY WHICH YOU CAN DO OPERTATION WHEN PRESS ON LISTITEM
        onTap: () {
          //IT WILL TAKE YOU TO THE RESULT FUNCTION
          // showResults(context);
        },

        leading: Icon(Icons.location_city),
        // title: Text(suggestionList[index]),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey),
                )
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
