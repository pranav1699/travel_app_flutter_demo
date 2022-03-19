import 'package:flutter/material.dart';
import 'package:travel_blog/travel.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.generateTravelBlog();
  final _pagectrl = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _pagectrl,
        itemCount: _list.length,
        itemBuilder: (context, index) {
          var travel = _list[index];
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 20, bottom: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    travel.url,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Positioned(
                bottom: 80,
                left: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        travel.name,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        travel.location,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 30,
                child:Container(
                  width: 60,
                  height:60,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(30)
                  ),
        
                    child: Icon(Icons.arrow_forward,color: Colors.white,size: 30,),
                  ),
                ),
            ],
          );
        });
  }
}
