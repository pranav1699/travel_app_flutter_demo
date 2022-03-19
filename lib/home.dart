import 'package:flutter/material.dart';
import 'package:travel_blog/most_popular.dart';
import 'package:travel_blog/travelblog.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.only(left:15),
          child: Text("Travel Blog", style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold)),
        ),
        Expanded(
          flex: 2,
          child: TravelBlog()),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text("Most Popular",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("View More",style: TextStyle(fontSize: 16,color: Colors.deepOrange,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: MostPopular(),
        ),
      ]),
    );
  }
}
