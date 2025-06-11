

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomSearchDelegate.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Travel Bookings"),
        centerTitle: true,
        leading: IconButton(

          icon: const Icon(Icons.travel_explore_rounded),
          onPressed:(){}


          ),
        actions: [
          IconButton(
              onPressed: (){
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate());
              },
              icon: Icon(Icons.search))
        ],



      ),









    );


  }
  
}