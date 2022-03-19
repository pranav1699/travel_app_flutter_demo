import 'package:flutter/material.dart';
import 'package:travel_blog/travel.dart';


class MostPopular extends StatelessWidget {
  final _list = Travel.generateMostPopular();
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding:EdgeInsets.only(left: 15,right: 15,bottom: 15) ,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          var travel = _list[index];
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  travel.url,
                  fit: BoxFit.cover,
                  width: 140,
                ),
              ),
              Positioned(
                bottom: 20,
                left: 15,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Material(
                    color:Colors.transparent,
                    child: Text(travel.location,style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                  Material(
                    color:Colors.transparent,
                    child: Text(travel.name,style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                  )
                ],)
              )
            
            ],
          );
        }), 
        separatorBuilder: (_, index)=>SizedBox(width: 15,),
        itemCount: _list.length,
        );
  }
}