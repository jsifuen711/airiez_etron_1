import 'package:flutter/material.dart';

import '../model/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;

  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 220.0,
          height: 220.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(slideList[index].imageUrl),
                fit: BoxFit.cover),
          ),
        ),
//     This adds space between the rows of widgets added
        SizedBox(
          height: 40.0,
        ),
        Text(
//          text is 'This is your title
//          this is your title gets replaced by 'slideList[index].title
          slideList[index].title,
          style: TextStyle(
            fontSize: 35.0,
            color: Theme.of(context).primaryColor,
          ),
        ),
//     This adds space between the rows of widgets added
        SizedBox(
          height: 10.0,
        ),
        Text(
          slideList[index].description,
//THIS GOT REPLACED WITH 'slideList[index].description,
//          'Welcome to Airiez Etron App. Through this app we here At '
//          'Airiez are developing some pretty cool stuff.'
//          ' Hope you enjoy our work as much as we enjoy doing it.',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
