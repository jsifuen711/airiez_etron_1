import 'package:flutter/material.dart';

// TO USE THESE DOTS CREATED ON THIS DART FILE, IMPLEMENT THEM ON THE
// getting_started_screen.dart
// PAGE

// 1. THIS PAGE STARTS WITH A STATELESS WIDGET
class SlideDots extends StatelessWidget {
  // 3.1 we need to add dynamic height and width funsction here
  // for this we add bool isActive
  bool isActive;
  // 3.2 SlideDots are added here
  SlideDots(this.isActive);
  // end of statement 3

  @override
  Widget build(BuildContext context) {
// 2. WE THEN PROVIDE AN ANIMATED CONTAINER
    // this is for our dots which display in our intro pages to the app
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
// 3. now we need to add dynamic height and width for this follow step 3.1 to 3.2
      // isActive ? 12 : 8,    is read as
      // if is active is set then the height will be 12
      // otherwise the height will be 8
      height: isActive ? 12 : 8,
      // for the width we want same parameters because
      // our dots will be the same height and width
      width: isActive ? 12 : 8,
      // now we provide a BoxDecoration for the dots
      // the box decoration will have color and radius circular of 12
      // for the color we will make it dynamic to primary colors of the theme
      // if it is not active then we will provide gray
      // if is written as **:**
      // remove ** and code should be as below leave colon
      // ... primaryColor : Colors.grey,
      decoration: BoxDecoration(
        color: isActive ? Theme.of(context).primaryColor : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
