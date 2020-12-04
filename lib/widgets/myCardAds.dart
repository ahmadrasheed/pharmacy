
import 'package:flutter/material.dart';
import 'package:pharmacy/models/post.dart';

Widget myCardAds(List<Post> data, int index) {
  return
    Expanded(
      child: Container(
        height: 200,
        child: Card(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Image(
                  //image: NetworkImage("https://picsum.photos/500/300"),
                  image: AssetImage(data[index].image),
                  fit: BoxFit.cover,
                ),
              )
              ,
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    data[index].job_title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(0.0),
              //   child: Container(
              //     height: 130,
              //     alignment: Alignment.center,
              //     color: Colors.lightBlueAccent,
              //     child: Padding(
              //       padding: const EdgeInsets.all(40.0),
              //       child: Text (data[index].first_name,
              //                     style: TextStyle(
              //                       color: Colors.black87,
              //                     fontSize: 16.0,
              //                     fontWeight: FontWeight.bold,
              //
              //                     )
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),

        ),
      ),
    );
}