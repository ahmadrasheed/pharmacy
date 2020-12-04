import 'package:flutter/material.dart';
import 'package:pharmacy/models/post.dart';

Widget myGridView(List<Post> data){

  return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 0.5,
      children:data.map((item) =>
          Card(
        elevation: 1,
        color: Colors.orange,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Stack(
            fit: StackFit.expand, // ahmad Very Important to make image take whole space

            children: [
              Container(
                child: Container(

                  child: Expanded(
                    child: Image(
                      image:AssetImage(item.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 4,
                  left:2,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      item.job_title,style: TextStyle(color:Colors.white
                    ,fontWeight: FontWeight.bold,fontSize: 16
                    ),),
                  )),

            ],
          ),
        ),
            )).toList(),
  );



}