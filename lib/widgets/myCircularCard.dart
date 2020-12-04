import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myCircularCard extends StatelessWidget {
  
  String title;
  Icon icon;
  myCircularCard({this.title,this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(blurRadius: 0.7, color: Colors.black38, spreadRadius: 0.5)
              ],
            ),
            child: CircleAvatar(
                child: this.icon,
                radius: 30.0,
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,

            ),
          ),
          Text(this.title),
        ],
      ),
    );
  }
}
