import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/factory.PNG',
    title: 'A Cool Way to Get Started',
    description: 'What is Lorem Ipsum?'
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys'
        'standard dummy text ever since the 1500s, when an unknown printer took a '
        'galley of type and scrambled it to make a type specimen book.',
  ),
  Slide(
    imageUrl: 'assets/images/house.PNG',
    title: 'Design Interactive App UI\'s',
    description: 'What is Lorem Ipsum?'
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys'
        'standard dummy text ever since the 1500s, when an unknown printer took a '
        'galley of type and scrambled it to make a type specimen book.',
  ),
  Slide(
    imageUrl: 'assets/images/partner.PNG',
    title: 'It\'s Just the Beginning',
    description: 'What is Lorem Ipsum?'
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys'
        'standard dummy text ever since the 1500s, when an unknown printer took a '
        'galley of type and scrambled it to make a type specimen book.',
  ),
];
