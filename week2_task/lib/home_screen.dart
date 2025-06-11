

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            myCard("Card 1","🌍 Europe \n Location: Western part of the Eurasian continent \n Countries: Over 40, including Germany, France, Italy, UK, and Spain.","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMMo2gOHY8ReBswZUmKPA3RxTARn_ycNl04w&s"),
            myCard("Card 2", "🌎 America \nDivided into:North America: USA, Canada, Mexico.\nSouth America: Brazil, Argentina, Chile, Peru.","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMMo2gOHY8ReBswZUmKPA3RxTARn_ycNl04w&s"),
            myCard("Card 2", "🌏 Australia (and Oceania)\nAustralia: The only country that is also a continent.\nCulture: Mix of indigenous Aboriginal culture and British colonial influence.","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMMo2gOHY8ReBswZUmKPA3RxTARn_ycNl04w&s"),
            myCard("Card 2", "🌏 Asia\nLocation: Largest continent, covering the Middle East, Central Asia, South Asia, East Asia, and Southeast Asia.\nCountries: Over 50, including China, India, Japan, Indonesia, and Saudi Arabia.","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMMo2gOHY8ReBswZUmKPA3RxTARn_ycNl04w&s")
          ],


        ),
      ),









    );


  }
  
}


Widget myCard(String title, String content,String imageUrl){



  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    color: Colors.blue,
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  imageUrl,
                  height: 50,
                  width: 60,
                  fit: BoxFit.cover,
                ),


              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child:
                  Text(
                    content,
                    textAlign: TextAlign.justify,
                  )
              )


            ],
          ),
          //image

          SizedBox(
            height: 10,
          ),

          Container(
            color: Colors.cyan,

            child: TextField(
              decoration: InputDecoration(
                labelText:"Enter you name",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),

              ),

            ),
          ),


          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {


              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Submit"),
            ),
          ),




        ],
      ),

    ),


  );

}