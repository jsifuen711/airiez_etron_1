import 'dart:async';
import 'package:flutter/material.dart';

import '../model/slide.dart';
import '../widgets/slide_item.dart';
import '../widgets/slide_dots.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';

// added a stateless widget and body & child with center screen
// converted widget to stateful
class GettingStartedScreen extends StatefulWidget {
//  this is where our controller goes
  @override
  _GettingStartedScreenState createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
//  AFTER CONVERTING THE WIDGET TO STATEFUL WE ADD A INT STATE
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

// dispose of the page controller as we are adding an automatic counter
//  for our slider page

//  now provide an init state for the automatic slider transition
//  for this we need an import from dart call Async

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

//      now for the page controller we provided an animated page transition
      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

//  after the timer init state we created this second function
//  this is the on page change function
  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      REMOVED APP BAR
//      appBar: AppBar(
//        title: Text('Home'),
//      ),
      body: Container(
        color: Colors.white,
//        background color above
        child: Padding(
//        padding was wrapped with container to provide white background
          padding: const EdgeInsets.all(20.0),
          child: Column(
//        this Column was changed/wrapped with padding for entire page view
            children: <Widget>[
              Expanded(
// TO IMPLEMENT DOTS WE WRAP THE Pageview.builder with a widget
// THE WIDGET WE WILL USE IS A STACK WIDGET
//              steps:
                // 1. wrap with widget
                // 2. Now call the widget Stack
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
// THIS IS WHERE THE PAGE CONTROLLER GOES & scroll direction
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      // Continuing prom line 52 onPagechanged we add the controller init state here
                      onPageChanged: _onPageChanged,
                      itemCount: slideList.length,
                      itemBuilder: (ctx, i) => SlideItem(i),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 35),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < slideList.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
//     This adds space between the rows of widgets added
              SizedBox(
                height: 20.0,
              ),
              Column(
//            this cross axis stretches the button
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
//              change this button to make a better UI
                  SizedBox(height: 40.0),
                  Container(
                    height: 40.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.blueAccent,
                      color: Colors.blue,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {
//  THIS CODE IS FOR ROUTING, DON'T FORGET TO IMPORT THE PATHWAY
                          Navigator.of(context)
                              .pushNamed(SignupScreen.routeName);
                        },
                        child: Center(
                          child: Text(
                            'GETTING STARTED',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                fontFamily: 'Monserrat'),
                          ),
                        ),
                      ),
                    ),
                  ),
// OLD CODE SUCKS WITH THAT BOXED BUTTON SO REPLACED WITH CIRCULAR BUTTONS
//                  FlatButton(
//                    child: Text(
//                      'Getting Started',
//                      style: TextStyle(
//                        fontSize: 18,
//                      ),
//                    ),
//                    shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(5),
//                    ),
//                    padding: const EdgeInsets.all(15),
//                    color: Theme.of(context).primaryColor,
//                    textColor: Colors.white,
//                    onPressed: () {},
//                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Have an account?',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
//                      added on pressed method for clicking the login button
                      FlatButton(
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
                        // activate this button by implementing
                        // the code onPressed (){inside here}
// THEN IMPORT PACKAGE TO BE ABLE TO ROUTE TO THE LOGIN SCREEN
//          import '../screens/login_screen.dart';
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(LoginScreen.routeName);
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
